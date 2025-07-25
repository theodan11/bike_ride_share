import 'package:bike_ride_ui/core/common/buy_service_container.dart';
import 'package:bike_ride_ui/core/common/card_image.dart';
import 'package:bike_ride_ui/core/common/card_text.dart';
import 'package:bike_ride_ui/core/common/header_and_view_all.dart';
import 'package:bike_ride_ui/core/common/my_app_bar.dart';
import 'package:flutter/material.dart';

class CarePage extends StatelessWidget {
  CarePage({super.key});

  final List<Map<String, String>> recList = [
    {"imgPath": "assets/images/car_rec_01.png", "title": "Spark Plug"},
    {"imgPath": "assets/images/car_rec_02.png", "title": "Clutch Shoe"},
    {"imgPath": "assets/images/car_rec_03.png", "title": "Hose Fuel"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(
          title: "Care",
          backgroundColor: Theme.of(context).colorScheme.primary),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              const HeaderAndViewAll(
                headerTitle: "Bike Name",
                buttonText: "Change",
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 4,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFFF5F5F5),
              ),
              const SizedBox(
                height: 18,
              ),
              const HeaderAndViewAll(
                headerTitle: "Care Recommendations",
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 128),
                  child: SizedBox(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: recList.length,
                      itemBuilder: (context, index) {
                        Map<String, String> recItem = recList[index];
                        return GestureDetector(
                          onTap: () {
                            print("${recItem["title"]} pressed");
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 15),
                            width: MediaQuery.of(context).size.width / 3 - 21,
                            // color: Colors.amber,
                            child: Column(
                              children: [
                                CardImage(
                                  imagePath: recItem["imgPath"]!,
                                  mHeight: 90,
                                ),
                                CardText(titleText: recItem["title"]!)
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const HeaderAndViewAll(
                headerTitle: "Buy Service Packages",
              ),
              const SizedBox(
                height: 18,
              ),
              BuyServiceContainer()
            ],
          ),
        ),
      ),
    );
  }
}
