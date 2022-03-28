
import 'package:flutter/material.dart';
import 'package:usell_up/src/screens/home/home_screen_view.dart';

class USellUp extends StatelessWidget {
  const USellUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'USellUp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreenView(),
    );
  }
}
