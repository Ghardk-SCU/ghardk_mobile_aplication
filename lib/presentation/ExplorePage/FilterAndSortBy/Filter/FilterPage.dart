import 'dart:ffi';

import 'package:awesome_select/awesome_select.dart';
import 'package:final_project/model/Cubits/category_cubit/category_cubit.dart';
import 'package:final_project/presentation/ExplorePage/FilterAndSortBy/Widgets/customDivider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class filterPage extends StatefulWidget {
  const filterPage({super.key});

  @override
  State<filterPage> createState() => _filterPageState();
}

class _filterPageState extends State<filterPage> {
  int CurrentOption = 0;
  double _startValue = 0.0, _endValue = 150.0;
  @override
  Widget build(BuildContext context) {
    List<String> categories = BlocProvider.of<CategoryCubit>(context)
        .categories
        .map((category) => category.name)
        .toList();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text('Filter',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
          ),
          const SizedBox(height: 10),
          const Text('Categories',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
          const SizedBox(height: 5),
          const customDivider(),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    categories[index],
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  trailing: Radio(
                    value: index + 1,
                    groupValue: CurrentOption,
                    onChanged: (value) {
                      setState(() {
                        CurrentOption = value!;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Divider(color: Colors.grey, thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Price Range',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              const Text('${10} - ${150} EGP',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ],
          ),
          SizedBox(height: 5),
          RangeSlider(
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            min: _startValue,
            max: _endValue,
            values: RangeValues(_startValue, _endValue),
            onChanged: (values) {
              setState(() {
                _startValue = values.start;
                _endValue = values.end;
              });
            },
          ),
          SizedBox(height: 10),
          applyChangesButton(ontap: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          }),
        ],
      ),
    );
  }
}

class applyChangesButton extends StatelessWidget {
  const applyChangesButton({
    super.key,
    required this.ontap,
  });
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text('Apply Changes',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
