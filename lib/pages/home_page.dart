import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_07610459/pages/random_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Are you bored?',
                style: GoogleFonts.mali(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueAccent.shade100,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Let\'s Random Activities',
                style: GoogleFonts.mali(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.green.shade100,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '👇Try Me!👇',
                style: GoogleFonts.mali(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepOrangeAccent.shade100,
                ),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, RandomPage.routeName);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple.shade100,
                ),
                child: Text(
                  'Random',
                  style: GoogleFonts.mali(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
