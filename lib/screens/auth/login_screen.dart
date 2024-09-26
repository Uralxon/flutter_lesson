import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/repository/repository.dart';

import 'confirmation_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controller = TextEditingController();
  final AuthRepository _repository = AuthRepository();
  bool _isLoading = false;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Войти в личный кабинет",
                style: GoogleFonts.inter(
                    fontSize: 28, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                "Введите номер телефона",
                style: GoogleFonts.inter(
                    fontSize: 14, color: const Color(0xff6e6e73)),
              ),
              const SizedBox(
                height: 14,
              ),
              MyTextField(
                controller: _controller,
              ),
              // maskFormatter: maskFormatter
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      _isLoading = true;
                    });
                    try {
                      await _repository.login(
                          phone: _controller.text, code: '0000');

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ConfirmationScreen(
                            phoneNumber: _controller.text,
                          ),
                        ),
                      );
                      setState(() {
                        _isLoading = false;
                      });
                    } on DioException catch (e) {
                      setState(() {
                        _isLoading = false;
                      });
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                content: Text(e.response?.data.toString() ??
                                    "Nimadir xato ketdi"),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Ok"))
                                ],
                              ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff3D82D0),
                      fixedSize: const Size(396, 56)),
                  child: Text(
                    "Получить код активации",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 396,
      child: TextFormField(
        controller: _controller,
        decoration: InputDecoration(
          prefixIcon:  Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Text('+998',style: TextStyle(fontSize:16 )),
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
