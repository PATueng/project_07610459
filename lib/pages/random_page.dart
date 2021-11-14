import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_07610459/pages/success_page.dart';
import 'package:project_07610459/pages/unsucccess_page.dart';
import 'package:project_07610459/services/activity_service.dart';
import 'package:project_07610459/models/activity_item.dart';

class RandomPage extends StatefulWidget {
  static const routeName = '/random';
  const RandomPage({Key? key}) : super(key: key);
  @override
  _RandomPageState createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '🚵‍♀️🏊‍♂️‍🚴‍♀ Random Activities 🚣‍♀⛹🏄️️',
            style: GoogleFonts.mali(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.pinkAccent.shade100,
        ),
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildFutureBuilder(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.greenAccent.shade100,
                  ),
                  child: Text(
                    'New Random',
                    style: GoogleFonts.mali(
                        fontSize: 30.0, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'Did you succeed?\n😳',
                  style: GoogleFonts.mali(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepOrangeAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, SuccessPage.routeName);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent.shade100,
                        ),
                        child: Text(
                          'Yes!😚',
                          style: GoogleFonts.mali(
                              fontSize: 30.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, UnSuccessPage.routeName);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent.shade100,
                        ),
                        child: Text(
                          'No.😫',
                          style: GoogleFonts.mali(
                              fontSize: 30.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]));
  }

  FutureBuilder<ActivityItem> buildFutureBuilder() {
    var fontsize = 25.0;
    return FutureBuilder<ActivityItem>(
        future: ActivityService.randomActivity(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('error');
          }
          if (snapshot.hasData) {
            ActivityItem act = snapshot.data!;
            return Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                border: Border.all(width: 3.0),
                borderRadius: const BorderRadius.all(
                    Radius.circular(20.0) //
                    ),
              ),
              child: Column(children: [
                Text('กิจกรรม : ${act.activity}',
                    style: GoogleFonts.mali(
                        fontSize: fontsize, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center),
                Text('ประเภท : ${act.type}',
                    style: GoogleFonts.mali(
                        fontSize: fontsize, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center),
                Text('จำนวนผู้เข้าร่วมขั้นต่ำ : ${act.participants}',
                    style: GoogleFonts.mali(
                        fontSize: fontsize, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center),
              ]),
            );
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
