import 'package:ecampus/Row4/studentUnion/unionOtp.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//universitycollegeemail.dart
import 'package:get/get.dart';

class Unionemail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Unionemail();
  }
}

class _Unionemail extends State<Unionemail> {
  var txt = '';
  final _formKey = GlobalKey<FormState>();
  // _Clubemail({required this.txt});
  TextEditingController email = new TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
         
        ListView(
          children: [
            SizedBox(
              height: screenHeight * 0.029,
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(
                left: screenWidth * 0.044,
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
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      //width: screenWidth*0.95,
                      //height: screenHeight*0.044,
                      margin: EdgeInsets.only(
                          left: screenWidth * 0.042, right: screenWidth * 0.042),
                      child: Text(
                        'What’s your Society',
                        style: TextStyle(
                            //fontFamily: 'Satoshi-Variable',
                            color: filedcolor,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 28),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: screenWidth * 0.042, right: screenWidth * 0.042),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Email?',
                      style: TextStyle(
                          // fontFamily: 'Satoshi-Variable',
                          color: filedcolor,
                          fontWeight: FontWeight.w700,
                          fontSize: 28),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.011,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: screenWidth * 0.042, right: screenWidth * 0.042),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      ' We will use your email to verify your student\n status and if you need to reset your password.',
                      style: TextStyle(
                          //fontFamily: 'Satoshi-Medium',
                          color: filedcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.009,
            ),
            Container(
              //height: 60,
              // height: screenHeight*0.10,
              width: screenWidth * 0.91,
              margin: EdgeInsets.only(
                right: screenWidth * 0.042,
                left: screenWidth * 0.042,
              ),

              child: Form(
                key: _formKey,
                child: TextFormField(
                  //textAlign: TextAlign.left,
                  controller: email,
                  decoration: InputDecoration(
                      labelText: 'Email address',
                      labelStyle: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: splashcolor,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                      // errorText: '',

                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          width: 2,
                          color: splashcolor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.1)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.1)),
                      contentPadding: EdgeInsets.only(
                        left: 16,
                      ),
                      hintText: 'Email address',
                      hintStyle: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: adidaslogocfdolors,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '⚠️ Error Message';
                    } else if (!value.contains('@')) {
                      return '⚠️ Error Message';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.55,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
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
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Get.to(union_otp_email());
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
                            fontFamily: 'Satoshi-Variable',
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        
      ),
    );
  }
}
