import 'package:bike_ride_ui/core/common/header_and_view_all.dart';
import 'package:bike_ride_ui/core/theme/my_inter_font.dart';
import 'package:flutter/material.dart';

class NearbyUsers extends StatelessWidget {
  NearbyUsers({super.key});
  final List<Map<String, String>> userList = [
    {"image": "assets/images/user_01.png", "name": "Ankita"},
    {"image": "assets/images/user_02.png", "name": "Pankaj"},
    {"image": "assets/images/user_03.png", "name": "Manish"},
    {"image": "assets/images/user_04.png", "name": "Suresh"},
    {"image": "assets/images/user_05.png", "name": "Ankur"},
    {"image": "assets/images/user_06.png", "name": "Deepesh"},
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0),
      child: SizedBox(
        height: 200,
        // width: double.maxFinite,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: userList.length,
          itemBuilder: (context, index) {
            Map<String, String> user = userList[index];
            // print(user["name"]);
            // print(MediaQuery.of(context).size.width / (82 / 6) - 82);
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                children: [
                  ClipOval(
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxHeight: 120, maxWidth: 120),
                      child: Image.asset(
                        user["image"]!,
                        width: MediaQuery.of(context).size.width / 5 - (82 / 5),
                        height:
                            MediaQuery.of(context).size.width / 5 - (82 / 5),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    user["name"]!,
                    style: MyInterFont.interRegular14.copyWith(
                      color: const Color(0xFF666666),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
