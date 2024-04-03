import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:emergency_support/Emergencyappui/view/page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Emergency2(),
  ));
}

class Emergency2 extends StatefulWidget {
  Emergency2({super.key});

  @override
  State<Emergency2> createState() => _Emergency2State();
}

class _Emergency2State extends State<Emergency2> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
         const   SizedBox(height: 35),
            Text(
              "WE'RE SENDING\nEMERGENCY SUPPORT",
              style: GoogleFonts.ubuntu(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),
          const  SizedBox(
              height: 15,
            ),
         const   Text(
              "Don't worry, our suport team will\ncontact you in next...",
              style: TextStyle(color: Colors.grey, fontSize: 14),
              textAlign: TextAlign.center,
            ),
         const   SizedBox(
              height: 8,
            ),
            CircularCountDownTimer(
              duration: 40,
              initialDuration: 0,
              controller: CountDownController(),
              width: MediaQuery.of(context).size.width / 2.5,
              height: MediaQuery.of(context).size.height / 2.5,
              ringColor: Colors.grey,
              ringGradient: null,
              fillColor: Colors.red[700]!,
              fillGradient: null,
              backgroundColor: Colors.white,
              backgroundGradient: null,
              strokeWidth: 20.0,
              strokeCap: StrokeCap.round,
              textStyle: TextStyle(
                  fontSize: 33.0,
                  color: Colors.red[700],
                  fontWeight: FontWeight.bold),
              textFormat: CountdownTextFormat.MM_SS,
              isReverse: true,
              isReverseAnimation: true,
              isTimerTextShown: true,
              autoStart: true,
              onStart: () {
                debugPrint('Countdown Started');
              },
              onComplete: () {
                debugPrint('Countdown Ended');
              },
              onChange: (String timeStamp) {
                debugPrint('Countdown Changed $timeStamp');
              },
            ),
          const  SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) =>  Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Card(
                          child: ListTile(
                            tileColor: Colors.white,
                            title: Text(
                              "Emergency Contact",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "7907416102",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            trailing: InkWell(
                              onTap: (){
                                _callNumber("7907416102");
                              },
                              child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.call,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(100), // Adjust the radius as needed
        ),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Page3()));
        },
        backgroundColor: Colors.red[600],
        child: Icon(
          Icons.star,
          color: Colors.white,
        ),
      ),
        bottomNavigationBar: BottomAppBar(
          surfaceTintColor: Colors.white,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home_outlined,color: Colors.grey,),
              Icon(Icons.calendar_today_outlined,color: Colors.grey,),
              Icon(Icons.folder_copy_outlined,color: Colors.grey,),
              Icon(Icons.person,color: Colors.grey,),
            ],
          ),
        )
    );
  }
  _callNumber(String number) async{
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }

}
