import 'package:bike_ride_ui/core/theme/my_inter_font.dart';
import 'package:flutter/material.dart';

class HeaderAndViewAll extends StatelessWidget {
  final String headerTitle;
  const HeaderAndViewAll({super.key, required this.headerTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MediaQuery.of(context).size.width > 242
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  headerTitle,
                  style:
                      MyInterFont.interSemiBold16.copyWith(color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    print("view all pressed");
                  },
                  child: Text("View all >", style: MyInterFont.interRegular14),
                )
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headerTitle,
                  style:
                      MyInterFont.interSemiBold16.copyWith(color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    print("view all pressed");
                  },
                  child: Text("View all >", style: MyInterFont.interRegular14),
                )
              ],
            ),
    );
  }
}
