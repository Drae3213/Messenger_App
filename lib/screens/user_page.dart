import 'package:flutter/material.dart';
import 'package:messenger_app_01/Global_var/const_var.dart';
import 'package:messenger_app_01/util/txt_cradles.dart';
import 'package:messenger_app_01/util/navbar.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              //Upper profile sec banner, pfp, following & followers count
              Stack(
                children: [
                  //banner
                  Container(
                    height: 230,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: kBaseWigdetClr,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          kBorderRadNum,
                        ),
                        bottomRight: Radius.circular(
                          kBorderRadNum,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      kSidePadding,
                      70,
                      kSidePadding,
                      0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          "images/inactive_settings_button.png",
                          width: 25.0,
                          height: 25.0,
                        ),
                      ],
                    ),
                  ),
                  //user pfp
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: kPfpTopHeight,
                      ),
                      child: Container(
                        height: 181,
                        width: 190,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(
                            kBorderRadNum,
                          ),
                          border: Border.all(
                            width: kUserBorderThickness,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      kSidePadding,
                      270,
                      kSidePadding,
                      0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        FollowTextCradle(
                          txt: "Following",
                          txtCount: "0",
                        ),
                        FollowTextCradle(
                          txt: "Followers",
                          txtCount: "0",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
                child: Text(
                  "User01",
                  style: TextStyle(
                    fontSize: kFontSize24,
                    fontFamily: kFontRoboto,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              //Bottom profile sec
              const Padding(
                padding: EdgeInsets.only(
                  top: 106,
                ),
                child: Text(
                  "Nothing to see here. . .",
                  style: TextStyle(
                    fontFamily: kFontComfortaa,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const NavBar(),
        ],
      ),
    );
  }
}
