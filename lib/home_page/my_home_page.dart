import 'package:flutter/material.dart';
import 'package:probox_clone1/data/repository/repository.dart';
import 'package:probox_clone1/screens/responsive/phone.dart';
import 'package:probox_clone1/screens/responsive/tablet.dart';
import 'package:probox_clone1/screens/responsive/web.dart';
import '../screens/responsive/responsive_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final UserRepository _repository = UserRepository();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveWidget(
        web: WebScreen(),
        tablet: TabletScreen(),
        phone: PhoneScreen(),
      ),
    );
  }
}
