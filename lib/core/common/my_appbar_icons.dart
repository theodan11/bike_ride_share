import 'package:bike_ride_ui/core/theme/my_inter_font.dart';
import 'package:flutter/material.dart';

class MyAppbarIconButton extends StatelessWidget {
  final IconData iconData;
  final double notification;
  const MyAppbarIconButton(
      {super.key, required this.iconData, this.notification = 0});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
        onPressed: () {
          print("pressed actions");
        },
        icon: Icon(
          iconData,
          size: 20,
          color: Colors.white,
        ),
      ),
      (notification > 0)
          ? Positioned(
              right: 2,
              top: 5,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    notification.toString(),
                    style: MyInterFont.interSemiBold16.copyWith(fontSize: 9),
                  ),
                ),
              ),
            )
          : const SizedBox(
              width: 0,
            ),
    ]);
  }
}
