import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/icon/logo (1).png"),
          const SizedBox(
            width: 98,
          ),
          const TextButtons(title: 'Каталог'),
          const TextButtons(title: 'Телефоны'),
          const TextButtons(title: 'Планшеты'),
          const TextButtons(title: 'Ноутбуки'),
          const TextButtons(title: 'Умные часы'),
          const TextButtons(title: 'Наушники '),
          SizedBox(
            child: Row(
              children: [
                const TextButtons(title: 'Аксессуары'),
                const SizedBox(
                  width: 20,
                ),
                const VerticalDivider(
                  thickness: 1,
                  width: 12,
                  color: Color(0xffe2e3e5),
                  endIndent: 12,
                  indent: 12,
                ),
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset("assets/icon/sticker-more-dots.svg"),
                const TextButtons(title: 'Сервисы'),
              ],
            ),
          ),
          const SizedBox(
            width: 57,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/icon/search-big-left.svg'),
              const SizedBox(
                width: 20,
              ),
              SvgPicture.asset('assets/icon/Heart.svg'),
              const SizedBox(
                width: 20,
              ),
              SvgPicture.asset('assets/icon/Bag.svg'),
              const SizedBox(
                width: 20,
              ),
              SvgPicture.asset('assets/icon/User.svg'),
              const SizedBox(
                width: 20,
              ),
              SvgPicture.asset('assets/icon/Vector.svg'),
              GestureDetector(
                child: const TextButtons(title: "ру"),
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

class TextButtons extends StatelessWidget {
  final String title;
  const TextButtons({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xff212121)),
        ));
  }
}
