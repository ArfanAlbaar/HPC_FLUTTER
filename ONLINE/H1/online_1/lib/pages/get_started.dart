import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xff910D1B),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Halo Arfan',
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                Image.asset('assets/LOGO.png', width: 170),
                const SizedBox(height: 50),
                ButtonCustom(
                  textButton: 'Button 1',
                ),
                const SizedBox(height: 10),
                ButtonCustom(
                  textButton: 'Button 2',
                ),
              ],
            ),
          ),
        ),
      );
}

class ButtonCustom extends StatelessWidget {
  ButtonCustom({Key? key, required this.textButton}) : super(key: key);

  String textButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35),
      width: 350,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xffFFC425),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
          child: Text(
        textButton,
        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
      )),
    );
  }
}
