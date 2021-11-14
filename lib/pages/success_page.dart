import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_07610459/pages/home_page.dart';
import 'package:project_07610459/pages/random_page.dart';

class SuccessPage extends StatelessWidget {
  static const routeName = '/success';
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '✨Congratulations✨',
                style: GoogleFonts.mali(
                  fontSize: 37.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.pinkAccent,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Are you still bored?',
                style: GoogleFonts.mali(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '😑',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    '😊',
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, RandomPage.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent.shade100,
                    ),
                    child: Text(
                      'Bored',
                      style: GoogleFonts.mali(
                          fontSize: 30.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, HomePage.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pinkAccent.shade100,
                    ),
                    child: Text(
                      'Happy',
                      style: GoogleFonts.mali(
                          fontSize: 30.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Text(
                '🎉Have a nice day🎉',
                style: GoogleFonts.mali(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue.shade300),
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}
