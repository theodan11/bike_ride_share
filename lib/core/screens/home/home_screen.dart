import 'package:bike_ride_ui/core/common/card_with_image.dart';
import 'package:bike_ride_ui/core/common/card_with_sname.dart';
import 'package:bike_ride_ui/core/common/header_and_view_all.dart';
import 'package:bike_ride_ui/core/common/my_appbar_icons.dart';
import 'package:bike_ride_ui/core/common/nearby_users.dart';
import 'package:bike_ride_ui/core/constant/color_constants.dart';
import 'package:bike_ride_ui/core/screens/home/widgets/deals_of_day_home.dart';
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
              const DealsOfDayHome(),
              const SizedBox(
                height: 30,
              ),
              const HeaderAndViewAll(headerTitle: "Upcoming Events"),
              const SizedBox(
                height: 22,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                height: 200,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CardWithTitle();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
