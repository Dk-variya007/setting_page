import 'package:flutter/material.dart';
import 'package:flutter_web_settings/helper/custome_theme.dart'; // Update the path if necessary
import 'package:flutter_web_settings/view/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Custom Theme',
      theme: CustomTheme.lightTheme,
      home: const SettingsPage(),
    );
  }
}
