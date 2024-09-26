import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probox_clone1/Widgets/products_widget.dart';

import '../../Widgets/app_bar_widget.dart';
import '../../Widgets/botton.dart';
import '../../Widgets/consultation_widget.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Image.asset(
        //   "assets/icon/logo (1).png",
        //   fit: BoxFit.fitWidth,
        // ),
        actions: const [Icon(Icons.add_alert_outlined)],
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            ListTile(
              title: TextButtons(title: 'Каталог'),
            ),
            ListTile(title: TextButtons(title: 'Телефоны')),
            ListTile(
              title: TextButtons(title: 'Планшеты'),
            ),
            ListTile(
              title: TextButtons(title: 'Ноутбуки'),
            ),
            ListTile(
              title: TextButtons(title: 'Умные часы'),
            ),
            ListTile(
              title: TextButtons(title: 'Наушники '),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xfff9f9f9),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 23, right: 23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Probox Store.',
                              style: GoogleFonts.inter(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xff212121)),
                              children: [
                                TextSpan(
                                  text:
                                      'The best way to buy the products you love.',
                                  style: GoogleFonts.inter(
                                      fontSize: 48,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'Probox Store. The best way to buy the products you \nlove.Probox Store. The best way to buy the products you love.',
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff212121)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Center(
                      child: MyButton(
                        onPressed: () {},
                        title: 'Оставить заявку',
                        w: 196,
                        bacColor: Colors.white,
                        textColor: const Color(0xff3d82d0),
                      ),
                    ),
                    const SizedBox(
                      height: 53,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 23),
                        child:
                            Image.asset('assets/icon/Apple-Iphone-15-Pro.png')),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const ProductsWidget(),
              const SizedBox(
                height: 80,
              ),
              const ConsultationWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
