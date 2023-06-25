import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../color.dart';
import '../SignUpPages/otp-email-3.dart';
import '../mainpage.dart';
import '../welcometoecampus.dart';
import 'email-5.dart';
import 'loginphonecampus.dart';

///Logecampus.dart
class Logecampus extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Logecampusstate();
  }
}

class _Logecampusstate extends State<Logecampus> {
  var docsvalue;
  bool ispasscodetrue = false;
  List datalst = [];
  var comnumb;
  var gender = '';
  bool cha = false;
  final _formKey = GlobalKey<FormState>();

  TextEditingController email = new TextEditingController();

  int topbarselection = 1;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false, //new line

        // body: LayoutBuilder(builder: (context, contraints) {
        // final screenWidth = contraints.maxWidth;
        // final screenHeight = contraints.maxHeight;

        // return
        body: ListView(children: [
          SizedBox(
            height: screenHeight * 0.039,
          ),
          Container(
            height: screenHeight * 0.017,
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(
              left: screenWidth * 0.042,
            ),
            child: InkWell(
                onTap: () {
                  Get.off(welcometoecampus());
                },
                child: Image.asset('images/mvc/coloredbackarrow.png')),
          ),
          SizedBox(
            height: screenHeight * 0.028,
          ),
          Container(
              // height: screenHeight * 0.044,
              width: screenWidth * 0.91,
              margin: EdgeInsets.only(
                  left: screenWidth * 0.042, right: screenWidth * 0.042),
              child: Text(
                'Log in to eCampus',
                style: TextStyle(
                    //fontFamily: 'Satoshi-Variable',
                    color: filedcolor,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 28),
              )),
          SizedBox(
            height: screenHeight * 0.024,
          ),
          Container(
            width: screenWidth * 0.93,
            height: screenHeight * 0.061,
            margin: EdgeInsets.only(
                left: screenWidth * 0.042, right: screenWidth * 0.042),
            decoration: BoxDecoration(
                // border: Border.all(width: 1),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: otbcolor),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      topbarselection = 1;
                      cha = false;
                    });
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => Logecampus(),
                    //     ));
                  },
                  child: Container(
                    width: screenWidth * 0.45,
                    height: screenHeight * 0.061,
                    margin: EdgeInsets.only(
                      right: 2,
                      left: 0,
                    ),
                    decoration: BoxDecoration(
                        border: topbarselection == 1
                            ? Border.all(width: 1, color: otbcolor)
                            : Border.all(width: 0, color: otbcolor),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: topbarselection == 1 ? Colors.white : otbcolor),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Phone number',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: filedcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      topbarselection = 2;
                      cha = true;
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => loginphonecampus(),
                      //     ));
                      topbarselection = 2;
                    });
                  },
                  child: Container(
                    width: screenWidth * 0.45,
                    height: screenHeight * 0.061,
                    margin: EdgeInsets.only(right: 0, left: 3.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: topbarselection == 2 ? Colors.white : otbcolor,
                      border: topbarselection == 2
                          ? Border.all(width: 1, color: otbcolor)
                          : Border.all(width: 0, color: otbcolor),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Email',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: filedcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.024,
          ),
          cha
              ? Form(
                  key: _formKey,
                  child: Container(
                    margin: EdgeInsets.only(
                        right: screenWidth * 0.042, left: screenWidth * 0.042),
                    width: screenWidth * 0.91,
                    // height: screenHeight*0.064,
                    // decoration: BoxDecoration(
                    //     color: Colors.white
                    // ),

                    child: TextFormField(
                      textAlign: TextAlign.left,
                      controller: email,
                      style: TextStyle(letterSpacing: 1),
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
                          //focusColor: Colors.amber,

                          // labelText: 'FIRST NAME',
                          // labelStyle: TextStyle(
                          //     fontSize: 15,
                          //     color: Colors.black,
                          //     fontWeight: FontWeight.bold,
                          //     fontStyle: FontStyle.normal),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 0.1)),
                          contentPadding: EdgeInsets.only(left: 16, top: 10),
                          hintText: 'Email address',
                          hintStyle: TextStyle(
                            // fontFamily: 'Satoshi-Variable',
                            color: adidaslogocfdolors,
                            fontWeight: FontWeight.w400,
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
                )
              : Card(
                  margin: EdgeInsets.only(
                      right: screenWidth * 0.042, left: screenWidth * 0.042),
                  elevation: 2,
                  child: Container(
                      width: screenWidth * 0.93,
                      height: screenHeight * 0.068,
                      child: Container(
                        child: IntlPhoneField(
                          dropdownIconPosition: IconPosition.trailing,
                          initialCountryCode: '+363',
                          flagsButtonMargin: EdgeInsets.only(top: 25, left: 10),
                          // obscureText: false,
                          //flagsButtonMargin: EdgeInsets.only(top: 25),
                          showCursor: true,
                          autofocus: true,
                          autovalidateMode: AutovalidateMode.values.first,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                              // enabled: false,

                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 2, top: 25),
                              hintText: 'Mobile number',
                              hintStyle: TextStyle(
                                // fontFamily: 'Satoshi-Medium',
                                color: Colors.black,
                                //fontWeight: FontWeight.w400,
                                fontSize: 13,
                              )),
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                          onSaved: (phone) {},
                          onCountryChanged: (country) {
                            print('Country changed to: ' + country.name);
                          },
                          onTap: () {},
                        ),
                      ))), //5 contianer
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screenWidth * 0.07, top: 5),
                child: Text(
                  'lost access to my phone number',
                  style: TextStyle(
                    color: splashcolor,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.52,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Center(
                child: Container(
              margin: EdgeInsets.only(
                right: screenWidth * 0.042,
                left: screenWidth * 0.042,
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
                  if (cha == true && _formKey.currentState!.validate()) {
                     screenLock(
                      
                      
                     
      footer: Center(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot your passcode?',
                style: TextStyle(
                    color: splashcolor,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              )),
        ),
      ),
      onUnlocked: () {
        Get.to(mainpage1());
      },
      cancelButton: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      deleteButton: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      keyPadConfig: KeyPadConfig(
        buttonConfig: KeyPadButtonConfig(
          backgroundColor: Colors.white,
          fontSize: 30,
          foregroundColor: Colors.black,
          buttonStyle: OutlinedButton.styleFrom(
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            side: BorderSide(color: Colors.white),
            // shape:  RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(70),
            //   side: BorderSide(color: Colors.white,width: 4)

            // ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
      secretsConfig: SecretsConfig(
        spacing: 15, // or spacingRatio
        padding: const EdgeInsets.all(40),
        secretConfig: SecretConfig(
          borderColor: otbcolor,
          borderSize: 2.0,
          disabledColor: otbcolor,
          enabledColor: splashcolor,
          size: 25,
          builder: (context, config, enabled) => Container(
            margin: EdgeInsets.only(bottom: 25),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: enabled ? config.enabledColor : config.disabledColor,
              border: Border.all(
                width: config.borderSize,
                color: config.borderColor,
              ),
            ),
            padding: const EdgeInsets.all(10),
            width: config.size,
            height: config.size,
          ),
        ),
      ),
      title: Container(
          margin: EdgeInsets.only(bottom: 60),
          child: Text(
            'Enter Passcode',
            style: TextStyle(color: Colors.black),
          )),
      context: context,
      correctString: '1234',
      config: ScreenLockConfig(
        buttonStyle:ElevatedButton.styleFrom(
          side: BorderSide(
            color: Colors.white
          )
        ),
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(fontSize: 24),
      ),
      // customizedButtonChild: GestureDetector(
      //     onTap: () {}, child: SvgPicture.asset('images/faceid.svg')),
      // customizedButtonTap: () async {},
      // onOpened: () async {},
    );
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => email_5()));
                  }
                  else if(cha == false){
                     screenLock(
      footer: Center(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot your passcode?',
                style: TextStyle(
                    color: splashcolor,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              )),
        ),
      ),
      onUnlocked: () {
        Get.to(mainpage1());
      },
      cancelButton: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      deleteButton: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      keyPadConfig: KeyPadConfig(
        buttonConfig: KeyPadButtonConfig(
          backgroundColor: Colors.white,
          fontSize: 30,
          foregroundColor: Colors.black,
          buttonStyle: OutlinedButton.styleFrom(
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            side: BorderSide(color: Colors.white),
            // shape:  RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(70),
            //   side: BorderSide(color: Colors.white,width: 4)

            // ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
      secretsConfig: SecretsConfig(
        spacing: 15, // or spacingRatio
        padding: const EdgeInsets.all(40),
        secretConfig: SecretConfig(
          borderColor: otbcolor,
          borderSize: 2.0,
          disabledColor: otbcolor,
          enabledColor: splashcolor,
          size: 25,
          builder: (context, config, enabled) => Container(
            margin: EdgeInsets.only(bottom: 25),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: enabled ? config.enabledColor : config.disabledColor,
              border: Border.all(
                width: config.borderSize,
                color: config.borderColor,
              ),
            ),
            padding: const EdgeInsets.all(10),
            width: config.size,
            height: config.size,
          ),
        ),
      ),
      title: Container(
          margin: EdgeInsets.only(bottom: 60),
          child: Text(
            'Enter Passcode',
            style: TextStyle(color: Colors.black),
          )),
      context: context,
      correctString: '1234',
      config: ScreenLockConfig(
        buttonStyle:ElevatedButton.styleFrom(
          side: BorderSide(
            color: Colors.white
          )
        ),
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(fontSize: 24),
      ),
      // customizedButtonChild: GestureDetector(
      //     onTap: () {}, child: SvgPicture.asset('images/faceid.svg')),
      // customizedButtonTap: () async {},
      // onOpened: () async {},
    );
                    //  Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => email_5()));
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
            )),
          )
        ])
        //})
        );
  }
}
