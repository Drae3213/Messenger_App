import 'package:flutter/material.dart';
import 'package:messenger_app_01/Global_var/const_var.dart';

class FollowTextCradle extends StatefulWidget {
  const FollowTextCradle({
    super.key,
    required this.txt,
    required this.txtCount,
  });

  final String txt;
  final String txtCount;

  @override
  State<FollowTextCradle> createState() => _FollowTextCradleState();
}

class _FollowTextCradleState extends State<FollowTextCradle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.txtCount,
        ),
        Text(
          widget.txt,
          style: const TextStyle(
            fontFamily: 'roboto',
            fontWeight: kFontLight,
          ),
        ),
      ],
    );
  }
}
