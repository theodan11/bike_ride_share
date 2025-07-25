import 'package:bike_ride_ui/core/common/card_with_sname.dart';
import 'package:flutter/material.dart';

class CardWithSnameListBuilder extends StatelessWidget {
  CardWithSnameListBuilder({super.key});
  final List<Map<String, dynamic>> placeList = [
    {
      "placeName": "Shimla to Manali",
      "imagePath": "assets/images/up_e_01.png",
      "numberOfUser": 12,
    },
    {
      "placeName": "Goa to Gujarat",
      "imagePath": "assets/images/up_e_02.png",
      "numberOfUser": 20,
    },
    {
      "placeName": "Kashmir",
      "imagePath": "assets/images/up_e_03.png",
      "numberOfUser": 6,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: placeList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        Map<String, dynamic> place = placeList[index];
        return CardWithTitle(
          placeName: place["placeName"],
          imagepath: place["imagePath"],
          numberOfUser: place["numberOfUser"],
        );
      },
    );
  }
}
