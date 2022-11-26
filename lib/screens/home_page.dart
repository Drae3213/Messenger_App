import 'package:flutter/material.dart';
import 'package:messenger_app_01/Global_var/const_var.dart';

import '../util/navbar.dart';
import '../util/user_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(
                  kSidePadding,
                  143.0,
                  kSidePadding,
                  0,
                ),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return const UserContainer();
                    },
                    childCount: 5,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    childAspectRatio: .75,
                  ),
                ),
              ),
            ],
          ),
          // Opacity(
          //   opacity: .50,
          //   child: Container(
          //     width: double.infinity,
          //     height: 932,
          //     decoration: const BoxDecoration(
          //       gradient: LinearGradient(
          //         colors: kScreenClr,
          //         begin: Alignment.center,
          //         end: Alignment.bottomCenter,
          //       ),
          //     ),
          //   ),
          // ),
          const NavBar(),
        ],
      ),
    );
  }
}
