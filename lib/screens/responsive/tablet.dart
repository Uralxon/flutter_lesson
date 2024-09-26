import 'package:flutter/cupertino.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: Text(
            'Tablet',
            style: TextStyle(fontFamily:'AUVICH',fontSize: 34),
          ),
        ),
        Center(
          child: Text(
            'Tablet',
            style: TextStyle(fontFamily:'Dansing',fontSize: 34),
          ),
        ),
      ],
    );
  }
}
