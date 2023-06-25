//universitycollegeemail.dart
import 'package:flutter/material.dart';

import '../../../color.dart';
import '../loginpages/Logecampus.dart';
import 'otp-email-3.dart';

class universitycollegeemail extends StatefulWidget {
 
  @override
  State<StatefulWidget> createState() {
    return _universitycollegeemailstate();
  }
}

class _universitycollegeemailstate extends State<universitycollegeemail> {
  var txt = '';
  final _formKey = GlobalKey<FormState>();
  //_universitycollegeemailstate({required this.txt});
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
            resizeToAvoidBottomInset: false,   //new line

      body: 
    // LayoutBuilder(
    //   builder: (context, contraints) {
    //     final screenWidth = contraints.maxWidth;
    //     final screenHeight = contraints.maxHeight;
      //  return 
        ListView(
            children: [
              SizedBox(
                height: screenHeight * 0.020,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                //  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                  left: screenWidth* 0.05,
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
                  Container(
                    width: screenWidth*0.95,
                    //height: screenHeight*0.044,
                    margin: EdgeInsets.only(
                         left: screenWidth* 0.05,
                        right: screenWidth * 0.019),
                    child:  Text(
                        'What’s your University/',
                        style: TextStyle(
                          wordSpacing: 0.6,
                            //fontFamily: 'Satoshi-Variable',
                            color: filedcolor,
                              fontStyle: FontStyle.normal,
                           fontWeight: FontWeight.w700,
                            fontSize: 28
                            ),
                      ),
                    
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: screenWidth* 0.05,
                        right:screenWidth * 0.019),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        'College Email?',
                        style: TextStyle(
                           // fontFamily: 'Satoshi-Variable',
                            color: filedcolor,
                            fontWeight: FontWeight.w700,
                            fontSize: 26),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.011,
              ),
              Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(
                        left: screenWidth* 0.042,
                      ),
                      child: Icon(Icons.info_outline,color: filedcolor,size: 20,)),
                      //SizedBox(width:4),
                  Container(
                    //width:screenWidth*0.752 ,
                    margin: EdgeInsets.only(left: screenWidth * 0.10,right: screenWidth * 0.042 ),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        'We will use your email to verify your student status and if you need to reset your password.',
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
                margin: EdgeInsets.only(right: screenWidth * 0.042,  left: screenWidth* 0.042,),
             
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    style: TextStyle(
                      letterSpacing: 1
                    ),

                    //textAlign: TextAlign.left,
                    controller: email,
                    decoration: InputDecoration(
                      
                    
                      labelText: 'Email address',
                      labelStyle:TextStyle(
                        letterSpacing: 1,
                          //fontFamily: 'Satoshi-Variable',
                          color: splashcolor,
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ) ,
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
                        contentPadding: EdgeInsets.only(left: 8,),
                        hintText: '   Email address',
                        
                        hintStyle: TextStyle(
                          letterSpacing: 0.2,
                          //fontFamily: 'Satoshi-Variable',
                          color: adidaslogocfdolors,
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        )),
                        
                        //⚠
                       // ⚠️
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
                height: screenHeight * 0.019,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: screenWidth * 0.25),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Have an account?',
                        style: TextStyle(
                            //fontFamily: 'Satoshi-Variable',
                            color: filedcolor,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 1),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Logecampus(),
                            ));
                      },
                      child: Align(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          ' Log in here.',
                          style: TextStyle(
                             // fontFamily: 'Satoshi-Variable',
                              color: splashcolor,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: screenHeight * 0.475,
              ),
        
              ///event horizen
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                      right: screenWidth * 0.042,
                      left:screenWidth * 0.042,
                      //top: 15,
                     ),
                  height: screenHeight*0.059,
                  width: screenWidth*0.91,
                  decoration: BoxDecoration(
                      color: splashcolor,
                      border: Border.all(
                        color: splashcolor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => otloginpmvc(
                            
                            ),
                          ));
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
        
    //   },
    // )
        // Container(
        //   height: screensize.height,
        //   width: screensize.width,
        //   child:

        //   ),
        );
  }
}
