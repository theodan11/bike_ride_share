import 'package:bike_ride_ui/core/common/card_with_image.dart';
import 'package:flutter/material.dart';

class DealsOfDayHome extends StatelessWidget {
  const DealsOfDayHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: Container(
        // width: 500,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardWithImage(
              imagePath: "assets/images/deals_of_the_day_01.png",
              titleText: "Racing Dual Visor Helmet",
              offerPrice: "₹ 4,079",
              originalPrice: "₹ 5,099",
              discount: 20,
              rating: 4.8,
              numberOfReviews: 212,
            ),
            CardWithImage(
              imagePath: "assets/images/deals_of_the_day_02.png",
              titleText: "Aerodynamic Helmet",
              offerPrice: "₹ 2,799",
              originalPrice: "₹ 3,499",
              discount: 20,
              rating: 4.8,
              numberOfReviews: 212,
            )
          ],
        ),
      ),
    );
  }
}
