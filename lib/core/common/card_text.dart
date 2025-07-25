import 'package:bike_ride_ui/core/constant/color_constants.dart';
import 'package:bike_ride_ui/core/theme/my_inter_font.dart';
import 'package:flutter/material.dart';

class CardText extends StatelessWidget {
  final String titleText;
  const CardText({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Text(
        titleText,
      style: MyInterFont.interRegular14
          .copyWith(height: 2.4, color: ColorConstants.textGray),
    );
  }
}
