import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({super.key});

  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Products",
                style: GoogleFonts.inter(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xff212121)),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icon/Arrow.svg')),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icon/Arrow2.svg')),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 36,
          ),
          SizedBox(
            height: 246,
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ProductsCard(
                          imageUrl: 'assets/icon/Image.png', title: 'Ноутбуки'),
                      SizedBox(
                        width: 20,
                      ),
                      ProductsCard(
                          imageUrl: 'assets/icon/Image (1).png',
                          title: 'Телефоны'), SizedBox(
                        width: 20,
                      ),
                      ProductsCard(
                          imageUrl: 'assets/icon/planshet.png',
                          title: 'Планшеты'), SizedBox(
                        width: 20,
                      ),
                      ProductsCard(
                          imageUrl: 'assets/icon/soat.png',
                          title: 'Умные часы'), SizedBox(
                        width: 20,
                      ),
                      ProductsCard(
                          imageUrl: 'assets/icon/noushnik.png',
                          title: 'Наушники '), SizedBox(
                        width: 20,
                      ),
                          ProductsCard(
                          imageUrl: 'assets/icon/Image5.png',
                          title: 'Accessories '),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}

class ProductsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  const ProductsCard({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 214,
      height: 246,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xfff9f9f9),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Image.asset(imageUrl),
            const SizedBox(
              height: 25,
            ),
            Text(
              title,
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff212121)),
            ),
          ],
        ),
      ),
    );
  }
}
