import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_07610459/pages/random_page.dart';
import 'home_page.dart';

class UnSuccessPage extends StatelessWidget {
  static const routeName = '/unsuccess';
  const UnSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'It\'s okay.\nDo you want to try again?\n😄',
                style: GoogleFonts.mali(fontSize: 37.0,fontWeight: FontWeight.w600,color: Colors.teal),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('😊',style: TextStyle(fontSize: 40),),
                  Text('😑',style: TextStyle(fontSize: 40),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, RandomPage.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent.shade100,
                    ),
                    child: Text(
                      'Yes, Please!',
                      style: GoogleFonts.mali(fontSize: 25.0,fontWeight: FontWeight.w500),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, HomePage.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pinkAccent.shade100,
                    ),
                    child: Text(
                      'No, thanks.',
                      style: GoogleFonts.mali(fontSize: 25.0,fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Text(
                '🎉Have a nice day🎉',
                style: GoogleFonts.mali(fontSize: 35.0,fontWeight: FontWeight.w600,color: Colors.blue.shade300),
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}
