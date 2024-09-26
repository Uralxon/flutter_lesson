import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probox_clone1/data/repository/repository.dart';

import 'botton.dart';

class BannersScreen extends StatefulWidget {
  const BannersScreen({super.key});

  @override
  State<BannersScreen> createState() => _BannersScreenState();
}

class _BannersScreenState extends State<BannersScreen> {
  final BannersRepository repository = BannersRepository();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: repository.get(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              height: 616,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.network(
                    'https://api.probox.uz/uploads/brand/images/BJrAJoNuCzEubrHVrQY8D6iV6WSQL2gA.png',),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            print(snapshot.error.toString());
            return Text(snapshot.error.toString());

          }
          return const Center(
            child: Text("Someting went wrong"),
          );
        });
  }
}
