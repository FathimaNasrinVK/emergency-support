import 'package:emergency_support/Emergencyappui/view/page2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class EmergencyPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 430,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 100.0)),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/emergency.jpeg")))),
           SizedBox(
            height: 30,
          ),
          Text('EMERGENCY \n ASSISTANCE FOR \nCUSTOMERS ',
              textAlign: TextAlign.center,
              style: GoogleFonts.ubuntu(
                  color: Colors.red[800],
                  fontSize: 27,
                  fontWeight: FontWeight.w900)),
           SizedBox(
            height: 6,
          ),
           Text(
            'Lorem ipsum dolor sit amet, consectetur \n   adipiscing elit,sed do eiusmod',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
           SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[800],
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Emergency2()));
              },
              child:  Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Let's get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              )),
        ],
      ),
    );
  }
}
