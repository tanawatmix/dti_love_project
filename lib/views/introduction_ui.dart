// ignore_for_file: prefer_const_constructors

import 'package:dti_love_project/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroDuctionUI extends StatefulWidget {
  const IntroDuctionUI({super.key});

  @override
  State<IntroDuctionUI> createState() => _IntroDuctionUIState();
}

class _IntroDuctionUIState extends State<IntroDuctionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 163, 255),
      body: IntroductionScreen(
        autoScrollDuration: 1500,
        infiniteAutoScroll: true,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              'CAR001',
              style: GoogleFonts.kanit(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
              ),
            ),
            image: Image.asset(
              'assets/images/car1.jpg',
            ),
            bodyWidget: Text('YEE YEE YEE'),
          ),
          PageViewModel(
            titleWidget: Text(
              'CAR002',
              style: GoogleFonts.kanit(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            image: Image.asset(
              'assets/images/car2.jpg',
            ),
            bodyWidget: Text('YEE YEE YEE'),
          ),
          PageViewModel(
            titleWidget: Text(
              'CAR003',
              style: GoogleFonts.kanit(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            image: Image.asset(
              'assets/images/car3.jpg',
            ),
            bodyWidget: Text('YEE YEE YEE'),
          ),
          PageViewModel(
            titleWidget: Text(
              'CAR004',
              style: GoogleFonts.kanit(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 76, 16, 240),
              ),
            ),
            image: Image.asset(
              'assets/images/car4.jpg',
            ),
            bodyWidget: Text(
              'YEE YEE YEE'
            ),
            
          ),
          PageViewModel(
            titleWidget: Text(
              'CAR005',
              style: GoogleFonts.kanit(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 154, 0, 0),
              ),
            ),
            image: Image.asset(
              'assets/images/car5.jpg',
            ),
            bodyWidget: Text(
              'YEE YEE YEE'
            ),
            
          ),
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
          style: GoogleFonts.kanit(),
        ),
        onSkip: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
            ),

          ),
          
          dotsDecorator: DotsDecorator(
            size: Size(
              MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.height * 0.025,
            ),
            color: Colors.grey,
            activeSize: Size(
              MediaQuery.of(context).size.width * 0.055,
              MediaQuery.of(context).size.height * 0.025,
            ),
            activeColor: Colors.purple,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0)
              ),
            ),
          ),
          next: Icon(
            Icons.arrow_forward,
          ),
          nextFlex: 0,
          done: Text(
            'เริ่มต้น',
            style: GoogleFonts.kanit(),
          ),
          onDone: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            ),
          
          ),
        ),
      );
    
  }
}
