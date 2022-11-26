import 'package:flutter/material.dart';
import 'package:messenger_app_01/Global_var/const_var.dart';
import 'package:messenger_app_01/util/txt_cradles.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              kSidePadding,
              0,
              kSidePadding,
              0,
            ),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 119,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Opacity(
                                opacity: .5,
                                child: Image.asset(
                                  "images/back_button_icon.png",
                                  height: 25.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 40.0,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 117,
                                width: 122.32,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      kBorderRadNum,
                                    ),
                                  ),
                                  border: Border.all(
                                    width: kUserBorderThickness,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: .75,
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        top: 10.0,
                                      ),
                                      child: Text(
                                        'User01',
                                        style: TextStyle(
                                          fontFamily: kFontRoboto,
                                          fontWeight: kFontNormal,
                                          color: Colors.black,
                                          fontSize: kFontSize12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          FollowTextCradle(
                                            txt: "Followers",
                                            txtCount: "0",
                                          ),
                                          SizedBox(
                                            height: 10,
                                            width: 33,
                                          ),
                                          FollowTextCradle(
                                            txt: "Following",
                                            txtCount: "0",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 94.31,
                                ),
                                child: Text(
                                  "Start chatting! :)",
                                  style: TextStyle(
                                    fontFamily: kFontRoboto,
                                    fontSize: kFontSize12,
                                    fontWeight: kFontLight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 793,
              bottom: 93,
            ),
            child: Center(
              child: Container(
                height: 53,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      kBorderRadNum,
                    ),
                  ),
                  border: Border.all(
                    width: kMessageBorderThickness,
                    color: Colors.black,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    20,
                    7,
                    20,
                    7,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Container(
                      //   width: 23,
                      //   height: 23,
                      //   color: Colors.black,
                      // ),
                      Container(
                        height: 23,
                        width: 275,
                        child: TextFormField(
                          maxLines: 10,
                          style: const TextStyle(
                            fontFamily: kFontRoboto,
                            fontSize: kFontSize16,
                            fontWeight: kFontLight,
                          ),
                        ),
                      ),

                      Image.asset(
                        "images/inactive_send_icon.png",
                        height: 23,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
