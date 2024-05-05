import 'package:final_project/presentation/ExplorePage/FilterAndSortBy/Widgets/customDivider.dart';
import 'package:flutter/material.dart';

class sortByPage extends StatefulWidget {
  const sortByPage({super.key});

  @override
  State<sortByPage> createState() => _sortByPageState();
}

late int _value;
int CurrentOption = 0;

class _sortByPageState extends State<sortByPage> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sort by',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
          SizedBox(height: 5),
          customDivider(),
          sortByListTile(),
        ],
      ),
    );
  }
}

class sortByListTile extends StatefulWidget {
  const sortByListTile({super.key});

  @override
  State<sortByListTile> createState() => _sortByListTileState();
}

class _sortByListTileState extends State<sortByListTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Recomended',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          trailing: Radio(
            value: 1,
            groupValue: CurrentOption,
            onChanged: (value) {
              setState(() {
                CurrentOption = value!;
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            'Price: Low to High',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          trailing: Radio(
            value: 2,
            groupValue: CurrentOption,
            onChanged: (value) {
              setState(() {
                CurrentOption = value!;
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            'Price: Hight to Low ',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          trailing: Radio(
            value: 3,
            groupValue: CurrentOption,
            onChanged: (value) {
              setState(() {
                CurrentOption = value!;
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            'Top rated',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          trailing: Radio(
            value: 4,
            groupValue: CurrentOption,
            onChanged: (value) {
              setState(() {
                CurrentOption = value!;
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            'Recently Added',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          trailing: Radio(
            value: 5,
            groupValue: CurrentOption,
            onChanged: (value) {
              setState(() {
                CurrentOption = value!;
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              });
            },
          ),
        ),
      ],
    );
  }
}
