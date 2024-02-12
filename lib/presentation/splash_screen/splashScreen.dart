import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/mainPage/mainPage.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

AnimationController? _animationController;
Animation<double>? fadinganimation;

class _splashScreenState extends State<splashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationController?.repeat(reverse: true);

    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => mainPage()));
    });
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //foregroundDecoration: BoxDecoration(color: kMainColor.withOpacity(0.9)),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_screen.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(color: kMainColor.withOpacity(0.9)),
            Center(
              child: Transform.scale(
                scale: 1.3,
                child: Container(
                  width: 140,
                  height: 260,
                  child: Image.asset(
                    'assets/images/LogoWhite.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




/*child: Center(
          child: Transform.scale(
            scale: 1.3,
            child: Container(
              width: 140,
              height: 260,
              child: Image.asset(
                'assets/images/LogoWhite.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ), */