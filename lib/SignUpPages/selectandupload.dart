import 'package:flutter/material.dart';
import '../../../color.dart';
import '../../../studentpage/ui/widget/button.dart';
import 'verifyif23.dart';
import 'package:flutter_svg/flutter_svg.dart';


class selectandupload extends StatefulWidget{
  // var docs='';
  // TextEditingController email=new TextEditingController();
  // selectandupload({required this.docs,required this.email});
  @override
  State<StatefulWidget> createState() {
    return _selectanduploadstate();
  }
}
class _selectanduploadstate extends State<selectandupload>{
  TextEditingController email=new TextEditingController();
  int _value = 0;
  var docs='';
 // _selectanduploadstate({required this.docs,required this.email});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
                  resizeToAvoidBottomInset: false,   //new line

      body: ListView(
        children: [
         SizedBox(height: screensize.height*0.082,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8,left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8,left: 8),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8,left: 8),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8,left: 8),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8,left: 8),
                  child: Image.asset('images/mvc/offline.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: screensize.height*0.036,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.042),
            child:  Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Select and upload',
                style:TextStyle(
                    //fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w600,
                    fontSize: 34
                ),
              ),
            ),
          ),
          SizedBox(height: screensize.height*0.0049,),
          Container(
            margin: EdgeInsets.only(left:screensize.width*0.042,right: screensize.width*0.042 ),
            child: Column(
              children: [
                Container(
                  //margin: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('We need a valid document to confirm you reside in Ireland and verify who you are. Data is processed securely.',
                      style:TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color:  Color(0xFF8E8E8E),
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2,),
                Container(
                  //margin: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Did you move from Ukraine during war?',
                      style:TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: splashcolor,
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ///start
          SizedBox(height: screensize.height*0.034,),
         Card(
          margin: EdgeInsets.only(left:screensize.width*0.042,right: screensize.width*0.042),
          color:Color(0xffeeeeff),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
         
               Row(
                 children: [
                   Container(
                     width: 32.5,
                     height: 32.5,
                     margin: EdgeInsets.only(left: 17),
                     decoration: BoxDecoration(
                       color: Color(0xffe0e0ff),
                       borderRadius: BorderRadius.circular(100),
                     ),
                     child: Center(child:  SvgPicture.asset(
                        'images/notepad.svg',
                     ),),
                   ),
                   Column(
                     children: [
                       Row(children: [
                         Container(
                           width: 48,
                           height: 19,
                           margin: EdgeInsets.only(left: 2,top:2),
                           decoration: BoxDecoration(
                           ),
                           child: Center(child: Image.asset('images/mvc/sid.png')),
                         ),
                         Align(
                           alignment: AlignmentDirectional.topStart,
                           child:Container(
                             margin: EdgeInsets.only(left: screensize.width*0.001,top: 0
                             ),
                             child:  Text('Student ID',
                               style: TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: Color(0xff0C212C),
                                   fontWeight:FontWeight.w400,
                                   fontSize: 13
                               ),
                             ),
                           ),
                         ),
                       ],),
                     ],
                   )
                 ],
               ),
               Container(
                   margin: EdgeInsets.only(right: 20),
                   child: Radio(
                   value: 1,
                   groupValue: _value,
                   focusColor: splashcolor,
                    activeColor: splashcolor,
                     onChanged: (int? value) {
                       setState(() {
                         _value = value!;
                       });
                     },
                   )),
             ],
           ),
         ),
       
          SizedBox(
            height: screensize.height*0.48,
          ),
          Butn(txt: 'Continue',color:splashcolor,btnhight:screensize.height*0.059,
            fontwiew: FontWeight.w400,Size: 16
            ,marginbottom: 0,marginleft: screensize.width*0.042,marginright: screensize.width*0.042,margintop: 0
            ,btnwidth: screensize.width,color2:splashcolor,
            pageroute:
            secondcheckcamerid(),
            dosomething: (){

            },
            colorbtntxt: Colors.white,
            radvalue: 5,),
        ],
      ),
    );
  }

}