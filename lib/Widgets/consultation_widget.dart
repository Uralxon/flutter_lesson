import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConsultationWidget extends StatefulWidget {
  const ConsultationWidget({super.key});

  @override
  State<ConsultationWidget> createState() => _ConsultationWidgetState();
}

class _ConsultationWidgetState extends State<ConsultationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xfff9f9f9),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: SizedBox(
              width: 560,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Мы поможем выбрать вам гаджет мечты',
                    style: GoogleFonts.inter(
                        fontSize: 48,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xff212121)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Оставьте заявку на бесплатную консультациюи мы поможем сделать правильный выбор',
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff212121)),
                  ),
                  const SizedBox(
                    height: 69,
                  ),
                  Container(
                    width: 255,
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: const LinearGradient(colors: [
                          Color(0xffF4D968),
                          Color(0xffCC6B19),
                        ])),
                    child: GestureDetector(
                      child: Center(
                          child: Text(
                        'Получить консультацию',
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffffffff)),
                      )),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset('assets/icon/image 99.png'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
