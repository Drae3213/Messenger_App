import 'package:flutter/material.dart';
import 'package:messenger_app_01/screens/dms_page.dart';
import 'package:messenger_app_01/screens/home_page.dart';
import 'package:messenger_app_01/screens/user_page.dart';

import '../Global_var/const_var.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 839,
        bottom: 40,
      ),
      child: Center(
        child: Container(
          width: 350.0,
          height: 53.0,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(
                kBorderRadNum,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              64.0,
              17,
              64.0,
              17.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    "images/home_icon.png",
                  ),
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DmsPage(),
                      ),
                    );
                  }),
                  child: Image.asset(
                    "images/dm_icon.png",
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 23.0,
                    height: 22.0,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.white,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          3,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserProfilePage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
