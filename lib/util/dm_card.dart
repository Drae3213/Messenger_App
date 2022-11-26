import 'package:flutter/material.dart';

import '../Global_var/const_var.dart';

class DmCard extends StatefulWidget {
  const DmCard({super.key});

  @override
  State<DmCard> createState() => _DmCardState();
}

class _DmCardState extends State<DmCard> {
  late bool onPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12.0,
      ),
      child: GestureDetector(
        onTap: () {
          setState(
            () {
              onPressed = !onPressed;
            },
          );
        },
        child: Container(
          width: double.infinity,
          height: 97.46,
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
                  width: double.infinity,
                  height: 97.46,
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12.0,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 75.6,
                        height: 72.28,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              kBorderRadNum,
                            ),
                          ),
                          border: Border.all(
                            width: kUserBorderThickness,
                            color: Colors.white,
                          ),
                          color: Colors.amber,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          12,
                          0,
                          12,
                          0,
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "username",
                                  style: TextStyle(
                                    fontFamily: kFontRoboto,
                                    fontWeight: kFontBold,
                                    color: Colors.white,
                                    fontSize: kFontSize12,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.5,
                                  width: 10,
                                ),
                                Opacity(
                                  opacity: .5,
                                  child: Text(
                                    'Dummy text',
                                    style: TextStyle(
                                      fontFamily: kFontRoboto,
                                      fontWeight: kFontLight,
                                      color: Colors.white,
                                      fontSize: kFontSize12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                              width: 75,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/cam_icon.png",
                                  height: 14.0,
                                ),
                                const SizedBox(
                                  height: 7.5,
                                  width: 10,
                                ),
                                const Opacity(
                                  opacity: .5,
                                  child: Text(
                                    '12:48 am',
                                    style: TextStyle(
                                      fontFamily: kFontRoboto,
                                      fontWeight: kFontLight,
                                      color: Colors.white,
                                      fontSize: kFontSize12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
