import 'package:final_project/core/shared/network/local_network.dart';
import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/model/Cubits/Address_cubit/address_cubit.dart';
import 'package:final_project/model/Cubits/Product_cubit/product_cubit.dart';
import 'package:final_project/model/Cubits/category_cubit/category_cubit.dart';
import 'package:final_project/model/Cubits/user_cubit/user_cubit.dart';
import 'package:final_project/presentation/Login&signup/loginAndSignupScreen/loginAndSignupScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheNetwork.cacheInitialization();
  userToken = await CacheNetwork.getCacheData(key: 'token');
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => AddressCubit()
/*           ..getAllAddress()
          ..getAllCountries(), */
          ),
      BlocProvider(
        create: (context) => UserCubit()..getUserProfile(),
      ),
      BlocProvider(
        create: (context) => ProductCubit(),
      ),
      BlocProvider(
        create: (context) => CategoryCubit()..getAllCategories(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kScaffoldColor,
          textTheme:
              GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
      home: loginAndSignupScreen(),
    );
    //userToken != null ? const mainPage() : loginAndSignupScreen());
  }
}
