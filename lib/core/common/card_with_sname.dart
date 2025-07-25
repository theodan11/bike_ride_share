import 'package:bike_ride_ui/core/constant/color_constants.dart';
import 'package:bike_ride_ui/core/theme/my_inter_font.dart';
import 'package:flutter/material.dart';

class CardWithTitle extends StatelessWidget {
  CardWithTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 8.5),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 260),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/up_e_01.png',
                    width: MediaQuery.of(context).size.width / 3 - (32 / 3),
                  ),
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
                            "20+",
                            style: MyInterFont.interRegularOffer12
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Shimla to Manali",
                style: MyInterFont.interRegular14
                    .copyWith(height: 2.4, color: ColorConstants.textGray),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
