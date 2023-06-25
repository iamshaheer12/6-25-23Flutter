import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:image_picker/image_picker.dart';
import '../../../color.dart';
import 'More_info.dart';

class createpasscod extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _createpasscodstate();
  }
}

class _createpasscodstate extends State<createpasscod> {
  TextEditingController myController1 = TextEditingController();
  TextEditingController myController2 = TextEditingController();
  TextEditingController myController3 = TextEditingController();
  TextEditingController myController4 = TextEditingController();
  TextEditingController email = new TextEditingController();
  var docs = '';
  var passcode = '';
  final _formKey = GlobalKey<FormState>();
  bool isfinied = false;
  bool isfilled = false;
  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      //barrierColor:otbcolor ,
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Passcode'),
        content: const Text('Your Passcode is incomplete'),
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

  var imagePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
                  resizeToAvoidBottomInset: false,   //new line

        body:
            // LayoutBuilder(builder: (context, contraints) {
            //   final screenWidth = contraints.maxWidth;
            //   final screenHeight = contraints.maxHeight;
            //   return
            ListView(children: [
      Column(
        children: [
          SizedBox(
            height: screenHeight * 0.013,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/offline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/offline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/offline.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.057,
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(
              left: screenWidth * 0.05,
            ),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('images/mvc/coloredbackarrow.png')),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Container(
            margin: EdgeInsets.only(
                left: screenWidth * 0.042, right: screenWidth * 0.042),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'Create passcode',
                style: TextStyle(
                    //fontFamily: 'Satoshi-Variable',
                    color: filedcolor,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 28),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.011,
          ),
          Stack(
            children: [
              Container(
                height: screenHeight * 0.048,
                width: screenWidth * 0.91,
                margin: EdgeInsets.only(
                  left: screenWidth * 0.042,
                  right: screenWidth * 0.042,
                ),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Create a passcode for your eCampus account.',
                    style: TextStyle(
                        //fontFamily: 'Satoshi-Medium',
                        color: seconpagecolors,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: screenHeight * 0.025,
          ),
          Container(
            height: screenHeight * 0.09,
            //color: otbcolor,
            child: OtpTextField(
              
              showFieldAsBox: true,
              
            filled: true,
                fillColor: otbcolor,
              fieldWidth: 45,
            
              margin: EdgeInsets.only(right: 10),
              hasCustomInputDecoration: false,
              textStyle: TextStyle(
                //fontFamily: 'Satoshi-Medium',
                color: splashcolor,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                //fontSize: 20,
              ),
              numberOfFields: 4,
              borderRadius: BorderRadius.circular(10),
              // borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              //showFieldAsBox: true,
              obscureText: true,
              decoration: InputDecoration(
                alignLabelWithHint: false,
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
              // onCodeChanged: (String code) {
              //   //handle validation or checks here
              // },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                 setState(() {
                  isfilled = verificationCode.length == 4 ? true : false;
                });
              }, // end onSubmit
            ),
          ),
         

          Container(
            margin: EdgeInsets.only(
              right: screenWidth * 0.08,
            ),
            child: Column(
              children: [
                Center(
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'By entering the passcode, you agree to',
                      style: TextStyle(
                          //fontFamily: 'Satoshi-Variable',
                          color: filedcolor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    ),
                  ),
                ),
                  
                // Container(
                //   margin: EdgeInsets.only(left: 55),
                //   child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Text(
                      'our',
                      style: TextStyle(
                          //fontFamily: 'Satoshi-Variable',
                          color: filedcolor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    ),
                    Center(
                      child:
                          // Row(
                          //   children: [
                          //     // Container(
                          //   margin: EdgeInsets.only(left: 55),
                          //   child: Align(
                          //     alignment: AlignmentDirectional.center,
                          //     child: Text(
                          //       'our',
                          //       style: TextStyle(
                          //           //fontFamily: 'Satoshi-Variable',
                          //           color: filedcolor,
                          //             fontStyle: FontStyle.normal,
                          //         fontWeight: FontWeight.w700,
                          //           fontSize: 13),
                          //     ),
                          //   ),
                          // ),
                          Container(
                        //margin: EdgeInsets.only(left: 90),
                        child: Align(
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'Terms & Conditions',
                            style: TextStyle(
                                //fontFamily: 'Satoshi-Variable',
                                color: splashcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          ),
                        ),
                      ),
                      //   ],
                      // ),
                      //),
                    ),
                  ],
                )
              ],
            ),
          ),

          ///second otp
          SizedBox(
            height: screenHeight * 0.475,
          ),
          Container(
            margin: EdgeInsets.only(
                right: screenWidth * 0.042,
                left: screenWidth * 0.042,
                //top: 15,
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
              onPressed: () async {
                if (isfilled == true) {
                  setState(() {});

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => verifyyouridentity(),
                      ));
                } else {
                  _showAlertDialog(context);
                }
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
                        fontFamily: 'Satoshi-Medium',
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
    ])
        // })
        );
  }
}
