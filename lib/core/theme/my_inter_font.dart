import 'package:bike_ride_ui/core/constant/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyInterFont {
  MyInterFont._();

  static final interSemiBold16 = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: Colors.white,
  );

  static final interRegular14 = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorConstants.primaryPurple,
    height: 1.4,
  );

  static final interMedium14 = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: const Color(0xFF666666),
  );

  static final interMediumLineThrough12 = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: ColorConstants.textGray,
    decoration: TextDecoration.lineThrough,
    decorationColor: ColorConstants.textGray,
  );

  static final interRegularOffer12 = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: ColorConstants.primaryPurple,
    height: 1.4,
  );
}
