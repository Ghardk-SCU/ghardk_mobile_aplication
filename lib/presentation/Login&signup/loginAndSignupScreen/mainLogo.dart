import 'package:flutter/material.dart';

class mainLogo extends StatelessWidget {
  const mainLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath(
        clipper: CustomClipPath1(),
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Image.asset(
            'assets/images/Logo/completeLogoMainColor.png',
            fit: BoxFit.none,
            scale: 1.3,
          ),
        ),
      ),
    );
  }
}

class CustomClipPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, h);
    path.quadraticBezierTo(w * 0.5, h - 70, w, h);
    path.lineTo(w, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
