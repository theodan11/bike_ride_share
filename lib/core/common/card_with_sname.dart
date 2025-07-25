import 'package:bike_ride_ui/core/constant/color_constants.dart';
import 'package:bike_ride_ui/core/theme/my_inter_font.dart';
import 'package:flutter/material.dart';

class CardWithTitle extends StatelessWidget {
  const CardWithTitle({super.key});

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
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Positioned(
                        left: 5,
                        bottom: 5,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/Ellipse 40.png',
                            width: 28,
                            height: 28,
                          ),
                        ),
                      );
                    },
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
