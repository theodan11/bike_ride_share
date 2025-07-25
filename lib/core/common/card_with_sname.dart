import 'package:bike_ride_ui/core/common/card_image.dart';
import 'package:bike_ride_ui/core/common/card_text.dart';
import 'package:bike_ride_ui/core/constant/color_constants.dart';
import 'package:bike_ride_ui/core/theme/my_inter_font.dart';
import 'package:flutter/material.dart';

class CardWithTitle extends StatelessWidget {
  final String imagepath;
  final String placeName;
  final int numberOfUser;
  const CardWithTitle(
      {super.key,
      required this.placeName,
      required this.imagepath,
      required this.numberOfUser});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 8.5),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 260, minWidth: 90),
          child: Column(
            children: [
              Stack(
                children: [
                  CardImage(imagePath: imagepath),
                  Positioned(
                    left: 5,
                    bottom: 5,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/Ellipse 40.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 22,
                    bottom: 5,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/Ellipse 40.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 39,
                    bottom: 5,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/Ellipse 40.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 56,
                    bottom: 5,
                    child: ClipOval(
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: const BoxDecoration(
                          color: ColorConstants.primaryPurple,
                        ),
                        child: Center(
                          child: Text(
                            "$numberOfUser+",
                            style: MyInterFont.interRegularOffer12
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              CardText(titleText: placeName),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
