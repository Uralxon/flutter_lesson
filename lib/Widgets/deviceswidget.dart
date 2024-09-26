import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probox_clone1/Widgets/botton.dart';
import 'package:probox_clone1/Widgets/text.dart';

class DevicesWidget extends StatefulWidget {
  const DevicesWidget({super.key});

  @override
  State<DevicesWidget> createState() => _DevicesWidgetState();
}

class _DevicesWidgetState extends State<DevicesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TextWidget(
          title: 'Лучшие устройства в одном \nмагазине PROBOX',
          title2:
              'Probox Store. The best way to buy the products you \nlove.Probox Store. The best way to buy the products you love.',
        ),
        const SizedBox(
          height: 36,
        ),
        Row(
          children: [
            Container(
              width: 673,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color(0xfff9f9f9),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 37,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Probox Store.',
                      style: GoogleFonts.inter(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xff212121)),
                      children: [
                        TextSpan(
                          text: 'The best way to \nbuy the products you love.',
                          style: GoogleFonts.inter(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  MyButton(onPressed: () {}, title: 'Подробнее'),
                  ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),bottomRight: Radius.circular(24)),child: Image.asset('assets/icon/image 8.png')),
                ],
              ),
            ),const SizedBox(width: 20,),
            Container(
              width: 673,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color(0xfff9f9f9),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 37,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Probox Store.',
                      style: GoogleFonts.inter(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xff212121)),
                      children: [
                        TextSpan(
                          text: 'The best way to \nbuy the products you love.',
                          style: GoogleFonts.inter(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  MyButton(onPressed: () {}, title: 'Подробнее'),
                  Image.asset('assets/icon/image 9.png'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
