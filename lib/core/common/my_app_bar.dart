import 'package:bike_ride_ui/core/common/my_appbar_icons.dart';
import 'package:bike_ride_ui/core/theme/my_inter_font.dart';
import 'package:flutter/material.dart';

class MyAppBar {
  MyAppBar._();

  static AppBar myAppBar({title, backgroundColor}) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 26,
        ),
      ),
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: MyInterFont.interSemiBold16,
      ),
      actions: const [
        MyAppbarIconButton(iconData: Icons.search),
        SizedBox(
          width: 15,
        ),
        MyAppbarIconButton(
          iconData: Icons.shopping_cart_outlined,
          notification: 3,
        ),
        SizedBox(
          width: 15,
        ),
        MyAppbarIconButton(iconData: Icons.favorite_border_outlined),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
