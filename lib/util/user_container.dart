import 'package:flutter/material.dart';
import 'package:messenger_app_01/Global_var/const_var.dart';

class UserContainer extends StatefulWidget {
  const UserContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<UserContainer> createState() => _UserContainerState();
}

class _UserContainerState extends State<UserContainer> {
  late bool onPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            onPressed = !onPressed;
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: onPressed ? kHighlightClr : kBaseWigdetClr,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              kBorderRadNum,
            ),
          ),
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: onPressed ? .50 : 0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      kBorderRadNum,
                    ),
                  ),
                  color: Colors.black,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: Container(
                    height: 117,
                    width: 117,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          kBorderRadNum,
                        ),
                      ),
                      border: Border.all(
                        width: kUserBorderThickness,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    23,
                    10,
                    23,
                    19,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "User",
                        style: TextStyle(
                          fontFamily: kFontRoboto,
                          fontWeight: FontWeight.normal,
                          color: kTxtClr,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Following",
                            style: TextStyle(
                              fontFamily: kFontRoboto,
                              fontWeight: kFontLight,
                              color: kTxtClr,
                            ),
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                              fontFamily: kFontRoboto,
                              fontWeight: kFontLight,
                              color: kTxtClr,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Following",
                            style: TextStyle(
                              fontFamily: kFontRoboto,
                              fontWeight: kFontLight,
                              color: kTxtClr,
                            ),
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                              fontFamily: kFontRoboto,
                              fontWeight: kFontLight,
                              color: kTxtClr,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
