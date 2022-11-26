import 'dart:math';

import 'package:flutter/material.dart';
import 'package:messenger_app_01/Global_var/const_var.dart';
import 'package:messenger_app_01/screens/Message_page.dart';
import 'package:messenger_app_01/util/dm_card.dart';
import 'package:messenger_app_01/util/my_card.dart';
import 'package:messenger_app_01/util/navbar.dart';
import 'package:messenger_app_01/util/user_container.dart';

class DmsPage extends StatefulWidget {
  const DmsPage({super.key});

  @override
  State<DmsPage> createState() => _DmsPageState();
}

class _DmsPageState extends State<DmsPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    late bool onPressed = false;

    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: NeverScrollableScrollPhysics(),
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.only(
                  top: 100,
                ),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Container(
                        child: TabBar(
                          padding: EdgeInsets.fromLTRB(
                            kSidePadding,
                            0,
                            kSidePadding,
                            0,
                          ),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.black,
                          controller: _tabController,
                          labelStyle: TextStyle(
                            fontFamily: kFontRoboto,
                            fontWeight: FontWeight.bold,
                          ),
                          unselectedLabelStyle: TextStyle(
                            fontFamily: kFontRoboto,
                            fontWeight: FontWeight.w300,
                          ),
                          tabs: [
                            Tab(
                              text: 'Direct',
                            ),
                            Tab(
                              text: 'General',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 800,
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            CustomScrollView(
                              slivers: [
                                SliverPadding(
                                  padding: EdgeInsets.fromLTRB(
                                    kSidePadding,
                                    30,
                                    kSidePadding,
                                    100,
                                  ),
                                  sliver: SliverList(
                                    delegate: SliverChildBuilderDelegate(
                                      (context, index) {
                                        return DmCard();
                                      },
                                      childCount: 5,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            CustomScrollView(
                              slivers: [
                                SliverPadding(
                                  padding: const EdgeInsets.fromLTRB(
                                    kSidePadding,
                                    30,
                                    kSidePadding,
                                    100,
                                  ),
                                  sliver: SliverList(
                                    delegate: SliverChildBuilderDelegate(
                                      (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MessagePage(),
                                                ),
                                              );
                                            });
                                          },
                                          child: const DmCard(),
                                        );
                                      },
                                      childCount: 5,
                                    ),
                                  ),
                                )
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
          const NavBar(),
        ],
      ),
    );
  }
}
