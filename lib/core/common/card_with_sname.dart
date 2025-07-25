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
          child: Stack(children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/up_e_01.png',
                  width: MediaQuery.of(context).size.width / 3 - (32 / 3),
                ),
                Text(
                  "Shimla to Manali",
                  style: MyInterFont.interRegular14
                      .copyWith(height: 2.4, color: ColorConstants.textGray),
                ),
              ],
            ),
            ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Positioned(
                    right: (index * 2 + 5),
                    bottom: 6,
                    child: ClipOval(
                      child: Image.asset('/assets/images/Ellipse 40.png'),
                    ),
                  );
                }),
          ]),
        ),
      ),
    );
    ;
  }
}
