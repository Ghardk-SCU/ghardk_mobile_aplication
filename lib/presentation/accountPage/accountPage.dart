import 'package:final_project/model/Cubits/Address_cubit/address_cubit.dart';
import 'package:final_project/model/Cubits/user_cubit/user_cubit.dart';
import 'package:final_project/presentation/accountPage/accountPageBody/accountPageBody.dart';
import 'package:final_project/presentation/accountPage/customAppBar/customAccountAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class accountPage extends StatelessWidget {
  const accountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<AddressCubit>(context);
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<UserCubit, UserState>(
          listener: (context, state) {
            if (state is userInfofaliure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errMsg),
                ),
              );
            }
          },
          builder: (context, state) {
            return state is userInfoLoading
                ? Center(child: CircularProgressIndicator())
                : state is userInfosuccess
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customAccountAppBar(
                            name:
                                '${state.user.firstName} ${state.user.lastName}',
                            img: 'assets/images/nasr.png',
                            location: cubit.allAddress.length < 1
                                ? ' , '
                                : '${cubit.allAddress[0].country}, ${cubit.allAddress[0].city}',
                          ),
                          Expanded(child: accountPageBody()),
                        ],
                      )
                    : Container();
          },
        ),
      ),
    );
  }
}
