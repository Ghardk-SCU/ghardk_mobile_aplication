import 'package:final_project/presentation/mainPage/mainPage.dart';
import 'package:flutter/material.dart';

class skipItNowButton extends StatelessWidget {
  const skipItNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const mainPage()));
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SKIP IT FOR NOW',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          SizedBox(width: 5),
          Icon(
            Icons.navigate_next,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
