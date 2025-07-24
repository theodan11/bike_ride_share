import 'package:bike_ride_ui/core/constant/color_constants.dart';
import 'package:bike_ride_ui/core/theme/my_inter_font.dart';
import 'package:flutter/material.dart';

class CardWithImage extends StatelessWidget {
  final String imagePath;
  final String titleText;
  final String offerPrice;
  final String originalPrice;
  final double discount;
  final double rating;
  final int numberOfReviews;
  const CardWithImage({
    super.key,
    required this.imagePath,
    required this.titleText,
    required this.offerPrice,
    required this.originalPrice,
    required this.discount,
    this.rating = 0,
    this.numberOfReviews = 0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Racing page pressed");
      },
      child: SizedBox(
        // width: MediaQuery.of(context).size.width / 2 - (46 / 2),
        width: 178,
        // height: 196,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: const Color.fromARGB(255, 191, 189, 189),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: Image.asset(
                imagePath,
                height: 110,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              titleText,
              style: MyInterFont.interMedium14,
            ),
            Row(
              children: [
                Text(
                  originalPrice,
                  style:
                      MyInterFont.interSemiBold16.copyWith(color: Colors.black),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  offerPrice,
                  style: MyInterFont.interMediumLineThrough12,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  "$discount% Off",
                  style: MyInterFont.interRegularOffer12,
                ),
              ],
            ),
            const SizedBox(height: 15),
            numberOfReviews > 0
                ? Row(
                    children: [
                      Image.asset("assets/images/Frame 37.png"),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "$rating($numberOfReviews)",
                        style: MyInterFont.interRegular14
                            .copyWith(color: ColorConstants.textGray),
                      )
                    ],
                  )
                : const SizedBox(
                    width: 0,
                  ),
          ],
        ),
      ),
    );
  }
}
