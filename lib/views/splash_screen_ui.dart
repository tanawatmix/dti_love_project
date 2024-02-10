// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dti_love_project/views/introduction_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUI  extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUI();
}

class _SplashScreenUI extends State<SplashScreenUI> {
  @override
  void initState() {
    // หน่วงไว้3 วิ
    Future.delayed(
      //เวลาที่หน่วง
      Duration(
        seconds: 3,
      ),
      //เมื่อครบเวลาที่หน่วงแล้วทำอะไร
      ()=>Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroDuctionUI(),
        ),
      ),
    );
    super.initState();
  }




  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Stack(
        children: [
          Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo2.png',
                width: MediaQuery.of(context).size.width * 0.65,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Dti Love 2024',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Wow Wow Wow',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontWeight: FontWeight.bold,
                ),
              ),
             SizedBox(
                height: 40.0,
              ),
             CircularProgressIndicator(
              color: Colors.yellow,
             ),
            ],
          ),
          ),
        


        ],
      ),
    );
  }
}

