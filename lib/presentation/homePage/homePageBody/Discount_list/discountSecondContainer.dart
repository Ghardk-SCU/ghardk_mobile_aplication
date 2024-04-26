import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class discountSecondContainer extends StatelessWidget {
  const discountSecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromARGB(255, 226, 226, 229)),
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Center(
          child: Stack(children: [
            Column(
              children: [
                Text('Amazing Bunny',
                    style: TextStyle(fontSize: 12, color: kMainColor)),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.8, color: Colors.black),
                      borderRadius: BorderRadius.circular(8)),
                  child: Image.asset(
                    'assets/images/burger-removebg-preview.png',
                    width: 70,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("50 EGP",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough)),
                    SizedBox(width: 10),
                    Text("39 EGP",
                        style: TextStyle(fontSize: 16, color: Colors.red)),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: -20,
              left: 50,
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 233, 34, 19),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('12',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Column(
                        children: [
                          Text('off',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300)),
                          Text('%',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

/*RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: '12%',
                          style: TextStyle(fontSize: 17, color: Colors.white)),
                      TextSpan(
                          text: 'off',
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                    ],
                  ),
                ), */
