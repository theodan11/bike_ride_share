import 'package:bike_ride_ui/core/common/header_and_view_all.dart';
import 'package:bike_ride_ui/core/common/my_appbar_icons.dart';
import 'package:bike_ride_ui/core/common/nearby_users.dart';
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    GestureDetector(
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
                                  color:
                                      const Color.fromARGB(255, 191, 189, 189),
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/deals_of_the_day_01.png',
                                height: 110,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Racing Dual Visor Helmet",
                              style: MyInterFont.interMedium14,
                            ),
                            Row(
                              children: [
                                Text(
                                  "₹ 4,079",
                                  style: MyInterFont.interSemiBold16
                                      .copyWith(color: Colors.black),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "₹ 5,099",
                                  style: MyInterFont.interMediumLineThrough12,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "20% Off",
                                  style: MyInterFont.interRegularOffer12,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
