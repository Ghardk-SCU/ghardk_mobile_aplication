import 'package:flutter/material.dart';

class customDivider extends StatelessWidget {
  const customDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 2,
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Color.fromARGB(110, 158, 158, 158),
              Colors.transparent,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )),
        ),
      ),
    );
  }
}
