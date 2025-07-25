import 'package:bike_ride_ui/core/common/card_with_image.dart';
import 'package:flutter/material.dart';

class BuyServiceContainer extends StatelessWidget {
  BuyServiceContainer({super.key});
  final List<Map<String, dynamic>> buyPackageList = [
    {
      "imgPath": "assets/images/buy_service_01.png",
      "name": "Annual Maintenance",
      "offerPrice": "₹ 900",
      "originalPrice": "₹ 1,000",
      "discount": 10
    },
    {
      "imgPath": "assets/images/buy_service_02.png",
      "name": "Annual Maintenance",
      "offerPrice": "₹ 1350",
      "originalPrice": "₹ 1,500",
      "discount": 10
    },
    {
      "imgPath": "assets/images/buy_service_03.png",
      "name": "Annual Maintenance",
      "offerPrice": "₹ 900",
      "originalPrice": "₹ 1,000",
      "discount": 10
    },
    {
      "imgPath": "assets/images/buy_service_04.png",
      "name": "Annual Maintenance",
      "offerPrice": "₹ 1350",
      "originalPrice": "₹ 1,500",
      "discount": 10
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 500),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
              // shrinkWrap: true,
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 180,
                mainAxisSpacing: 18,
                crossAxisSpacing: 14,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                Map<String, dynamic> packList = buyPackageList[index];
                return CardWithImage(
                  imagePath: packList["imgPath"],
                  titleText: packList["name"],
                  offerPrice: packList["offerPrice"],
                  originalPrice: packList["originalPrice"],
                  discount: packList["discount"],
                );
              }),
        ),
      ),
    );
  }
}
