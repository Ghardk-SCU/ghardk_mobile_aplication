import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class rating extends StatefulWidget {
  rating(
      {super.key,
      required this.ratenum,
      required this.itemsize,
      required this.itempadding});
  final double ratenum;
  final double itemsize;
  final double itempadding;
  @override
  State<rating> createState() => _ratingState();
}

class _ratingState extends State<rating> {
  @override
  Widget build(BuildContext context) {
    return RatingBar(
      maxRating: 5,
      minRating: 0,
      itemPadding: EdgeInsets.only(right: widget.itempadding),
      itemSize: widget.itemsize,
      ignoreGestures: true,
      initialRating: widget.ratenum,
      allowHalfRating: true,
      itemCount: 5,
      direction: Axis.horizontal,
      ratingWidget: RatingWidget(
        full: const Icon(Icons.star, color: orange_stars),
        half: const Icon(Icons.star_half, color: orange_stars),
        empty: const Icon(Icons.star_outline, color: orange_stars),
      ),
      onRatingUpdate: (value) {},
    );
  }
}
