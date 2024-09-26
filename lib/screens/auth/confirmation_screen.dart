import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pinput/pinput.dart';

import '../../home_page/my_home_page.dart';

class ConfirmationScreen extends StatefulWidget {
  // int time = 59;
  // Timer? _timer;
  //
  // void startTimer() {
  //   Timer.periodic(Duration(seconds: 1), (val) {
  //     if (time == 0) {
  //       _timer!.cancel();
  //
  //     } else {
  //       time--;
  //
  //     }
  //   });
  //
  // }
  //
  // @override
  // void initState() {
  //   startTimer();
  //   var initState = super.initState();
  // }

  final String phoneNumber;

  const ConfirmationScreen({
    super.key,
    required this.phoneNumber,
  });

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color(0xfff9f9f9),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Подтверждение SMS кода",
                style: GoogleFonts.inter(
                    fontSize: 28, fontWeight: FontWeight.w700),
              ),
              Text(
                textAlign: TextAlign.center,
                "SMS с кодом отправлено на номер \n${widget.phoneNumber}",
                style: GoogleFonts.inter(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Введите код из смс",
                style: GoogleFonts.inter(
                    fontSize: 14, color: const Color(0xff6e6e73)),
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                  width: 396,
                  height: 56,
                  child: Pinput(
                    controller: TextEditingController(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "xoto kod kiritildi";
                      }
                    },
                    keyboardType: TextInputType.number,
                    length: 6,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    defaultPinTheme: PinTheme(
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffffffff)),
                    ),
                  )),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3D82D0),
                    fixedSize: const Size(396, 56)),
                child: Text(
                  "Войти",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),

              // timer==0?ElevatedButton(onPressed: (){}, child: Text("Send again")):Text("00:$time"),
            ],
          ),
        ),
      ),
    );
  }
}
