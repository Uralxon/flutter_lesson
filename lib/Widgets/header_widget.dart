import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probox_clone1/Widgets/botton.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 616,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xfff9f9f9),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 60,
          ),
          SizedBox(
            width: 505,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        text: 'The best way to buy the products you love.',
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
                  'Probox Store. The best way to buy the products you \nlove.Probox Store. The best way to buy the products you love.',
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff212121)),
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  children: [
                    MyButton(
                      onPressed: () {},
                      title: 'Купить',
                      w: 120,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    MyButton(
                      onPressed: () {},
                      title: 'Оставить заявку',
                      w: 196,
                      bacColor: Colors.white,
                      textColor: const Color(0xff3d82d0),
                    )
                  ],
                ),
                const SizedBox(
                  height: 73,
                ),
                Row(
                  children: [
                    IconButton(
                        hoverColor: const Color(0xffffffff),
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icon/Arrow.svg')),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        hoverColor: const Color(0xffffffff),
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icon/Arrow2.svg')),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 105,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset('assets/icon/Apple-Iphone-15-Pro.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
