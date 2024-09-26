import 'package:flutter/material.dart';
import 'package:probox_clone1/Widgets/product_widget.dart';
import 'package:probox_clone1/home_page/my_home_page.dart';
import 'package:probox_clone1/screens/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(theme: ThemeData(fontFamily:'AUVICH'),
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
    );
  }
}
