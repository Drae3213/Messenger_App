import 'package:flutter/material.dart';
import 'package:messenger_app_01/screens/Message_page.dart';
import 'package:messenger_app_01/screens/dms_page.dart';
import 'package:messenger_app_01/screens/home_page.dart';
import 'package:messenger_app_01/screens/user_page.dart';
import 'package:messenger_app_01/util/navbar.dart';

void main() {
  runApp(const MyApp());
}

final screens = [
  const HomePage(),
  const DmsPage(),
  const UserProfilePage(),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
