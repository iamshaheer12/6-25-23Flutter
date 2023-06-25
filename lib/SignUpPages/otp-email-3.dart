//otpmvc.dart
import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ecampus/SignUpPages/passcode-4.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import '../../../color.dart';
import '../loginpages/email-5.dart';

class otloginpmvc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _otloginpmvcstate();
  }
}

class _otloginpmvcstate extends State<otloginpmvc> {
  Timer? countdownTimer;
  Duration myDuration = Duration(minutes: 3);
  bool isotpsend = false;
  var txt = '';
  int endTime = DateTime.now().minute;
  TextEditingController email = new TextEditingController();

  final _formKey = GlobalKey<FormState>();
  Random random = new Random();
  EmailOTP myauth = EmailOTP();

  TextEditingController txt1 = new TextEditingController();
  TextEditingController txt2 = new TextEditingController();
  TextEditingController txt3 = new TextEditingController();
  TextEditingController txt4 = new TextEditingController();
  TextEditingController txt5 = new TextEditingController();
  TextEditingController txt6 = new TextEditingController();
  bool isitendtosenditagain = false;
  CountdownTimerController controller =
      new CountdownTimerController(endTime: 3);
  bool isfilled = false;
  onEnd() {
    setState(() {
      isitendtosenditagain = true;
    });
  }

  void startTimer() {
    setState(() {
      countdownTimer =
          Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
    });
  }

  // Step 4
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  // Step 5
  void resetTimer() {
    stopTimer();
    setState(() => myDuration = Duration(minutes: 3));
  }

  // Step 6
  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      //barrierColor:otbcolor ,
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('OTP'),
        content: const Text('OTP is incorrect or incomplete'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            /// This parameter indicates this action is the default,
            /// and turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('cancel'),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    print("email.text===${email.text}");
    controller = CountdownTimerController(endTime: 3, onEnd: onEnd);
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    var screensize = MediaQuery.of(context).size;
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Scaffold(
                  resizeToAvoidBottomInset: false,   //new line

      body:
          //  LayoutBuilder(builder: (context, contraints) {
          //   final screenWidth = contraints.maxWidth;
          //   final screenHeight = contraints.maxHeight;
          //   return

          ListView(
        children: [
          SizedBox(
            height: screenHeight * 0.072,
          ),
          Container(
            height: screenHeight * 0.017,
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(
              left: screenWidth * 0.042,
            ),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('images/mvc/coloredbackarrow.png')),
          ),
          SizedBox(
            height: screenHeight * 0.030,
          ),
          Column(
            children: [
              Container(
                //height: screenHeight*0.044,
                width: screenWidth * 0.914,
                margin: EdgeInsets.only(
                    left: screenWidth * 0.042, right: screenWidth * 0.042),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Verify your email',
                    style: TextStyle(
                        // fontFamily: 'Satoshi-Variable',
                        color: filedcolor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 28),
                  ),
                ),
              ),
              Container(
                height: screenHeight * 0.044,
                width: screenWidth * 0.914,
                margin: EdgeInsets.only(
                    left: screenWidth * 0.042, right: screenWidth * 0.042),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'address',
                    style: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: filedcolor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 26),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.009,
          ),
          Container(
            width: screenWidth * 0.914,
            height: screenHeight * 0.022,
            margin: EdgeInsets.only(
                left: screenWidth * 0.042, right: screenWidth * 0.042),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'We’ve sent it to abc@gmail.com',
                style: TextStyle(
                    // fontFamily: 'Satoshi-Variable',
                    color: filedcolor,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.028,
          ),
          Container(
            height: screenHeight * 0.10,
            //color: otbcolor,
            child: OtpTextField(
              showFieldAsBox: true,
              //showCursor: false,
              
              fillColor:otbcolor ,
              filled: true,
            
              fieldWidth: 45,
              margin: 	EdgeInsets.only(
                right: 10.0),
              hasCustomInputDecoration: false,
              textStyle: TextStyle(
                //fontFamily: 'Satoshi-Medium',
                color: splashcolor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
                //fontSize: 20,
              ),
              numberOfFields: 6,
              borderRadius: BorderRadius.circular(10),
              // borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              //showFieldAsBox: true,
              decoration: InputDecoration(
                
                //  errorText: 'Otp is not correct',

                filled: true,
                fillColor: otbcolor,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: otbcolor,
                    )),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: otbcolor,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: otbcolor,
                    )),
              ),
              //runs when a code is typed in
              onCodeChanged: (String code) {
                 if (code.length == 6) {
                  setState(() {
                    isfilled == true;
                  });
                } else if(code.length != 6) {
                  setState(() {
                    isfilled == false;
                  });
                }

                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {

               
                setState(() {
                  isfilled = verificationCode.length == 6 ? true : false;
                });
               
              }, // end onSubmit
            ),
          ),
         
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //  margin: EdgeInsets.only(right: 3),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'Resend code in ',
                      style: TextStyle(
                          //fontFamily: 'Satoshi-Variable',
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    // margin: EdgeInsets.only(left: 130),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        '$minutes:$seconds',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: splashcolor,
                            fontStyle: FontStyle.normal,
                            // fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          ///second otp
          SizedBox(
            height: screenHeight * 0.019,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //height: screenHeight*0.022,
                  //margin: EdgeInsets.only(right: 40),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'Didn’t get the code?',
                      style: TextStyle(
                          //fontFamily: 'Satoshi-Variable',
                          color: filedcolor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ),
                Container(
                  height: screenHeight * 0.022,
                  //margin: EdgeInsets.only(left: 165),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: InkWell(
                      onTap: () {
                        if (myDuration.inMinutes == 0 &&
                            myDuration.inSeconds == 0) {
                          setState(() {
                            isotpsend = true;
                            Duration(seconds: 10);
                            resetTimer();
                            startTimer();
                            isotpsend = false;
                          });
                        }
                      },
                      child: Text(
                        ' Resend it.',
                        style: TextStyle(
                            //fontFamily: 'Satoshi-Variable',
                            color: myDuration.inMinutes == 0 &&
                                    myDuration.inSeconds == 0
                                ? splashcolor
                                : splashcolor,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.435,
          ),
          Container(
            margin: EdgeInsets.only(
              right: screenWidth * 0.042,
              left: screenWidth * 0.042,
              //  bottom: screenHeight * 0.06
            ),
            height: screenHeight * 0.059,
            width: screenWidth * 0.91,
            decoration: BoxDecoration(
                color: splashcolor,
                border: Border.all(
                  color: splashcolor,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: ElevatedButton(
              onPressed: () {
                if (isfilled == true) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => createpasscod(),
                      ));
                } else {
                  _showAlertDialog(context);
                }
                //if (_formKey.currentState!.validate()) {

                // }
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(splashcolor),
                  elevation: MaterialStateProperty.all(3)),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          )
        ],
      ),

      // })\
    );
  }
}
