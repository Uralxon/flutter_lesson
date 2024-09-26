import 'package:flutter/cupertino.dart';
import 'package:probox_clone1/Widgets/header_widget.dart';

import '../../Widgets/app_bar_widget.dart';
import '../../Widgets/banners_widget.dart';
import '../../Widgets/consultation_widget.dart';
import '../../Widgets/deviceswidget.dart';
import '../../Widgets/products_widget.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 37, right: 37),
        child: Column(
          children: [
            AppBarWidget(),
            SizedBox(
              height: 20,
            ),

            HeaderWidget(),
            SizedBox(
              height: 80,
            ),
            // ProductsWidget(),
            SizedBox(
              height: 80,
            ),
            ProductsWidget(),
            SizedBox(
              height: 80,
            ),
            ConsultationWidget(),
            SizedBox(
              height: 80,
            ),
            DevicesWidget(),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
