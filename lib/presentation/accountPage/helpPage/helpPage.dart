import 'package:final_project/presentation/accountPage/helpPage/customHelpCard.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:flutter/material.dart';

class helpPage extends StatelessWidget {
  const helpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const customAccAppBar(text: "Help"),
          const SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/helpItems/help1.png"),
                  const SizedBox(height: 20),
                  const Text(
                    'How can we help you?',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "If you're facing any app or order issues, we're ready to help you out. Feel free to reach out for assistance.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customHelpCard(
                          icon: Icons.help_outline, text: 'Common Questions'),
                      customHelpCard(
                          icon: Icons.handshake_outlined,
                          text: 'Help with an order'),
                    ],
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
