import 'package:bike_ride_ui/core/common/card_with_image.dart';
import 'package:bike_ride_ui/core/common/header_and_view_all.dart';
import 'package:bike_ride_ui/core/common/my_appbar_icons.dart';
import 'package:bike_ride_ui/core/common/nearby_users.dart';
import 'package:bike_ride_ui/core/constant/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:bike_ride_ui/core/theme/my_inter_font.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 26,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Home",
          style: MyInterFont.interSemiBold16,
        ),
        actions: const [
          MyAppbarIconButton(iconData: Icons.search),
          SizedBox(
            width: 15,
          ),
          MyAppbarIconButton(iconData: Icons.shopping_cart_outlined),
          SizedBox(
            width: 15,
          ),
          MyAppbarIconButton(iconData: Icons.favorite_border_outlined),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const HeaderAndViewAll(headerTitle: "Nearby User"),
              const SizedBox(
                height: 12,
              ),
              NearbyUsers(),
              const SizedBox(
                height: 20,
              ),
              const HeaderAndViewAll(headerTitle: "Deals of the Day"),
              const SizedBox(
                height: 15,
              ),
              ConstrainedBox(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
