import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Addproduct extends StatefulWidget {
  const Addproduct({super.key});

  @override
  State<Addproduct> createState() => _AddproductState();
}

class _AddproductState extends State<Addproduct> {
  String item = 'Standar Pricing';
  final ename = TextEditingController(text: 'Placeholder Text');
  final decription = TextEditingController(text: 'Placeholder Text');
  var item1 = ['Standar Pricing', 'the theme', 'equally filled'];
  String price = '0.00';
  List<String> price1 = ['123', '1.00', '2.00'];
  bool addi = false;
  final state = TextEditingController();
  final unit = TextEditingController();
  additional() {
    var screensize = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: 8,
        ),
        Container(
          // height: 30,
          margin: EdgeInsets.only(
            left: screensize.width * 0.042,
            right: screensize.width * 0.042,
          ),
          child: TextFormField(
            style: TextStyle(
                fontFamily: 'Satoshi-Medium',
                color: filedcolor,
                fontWeight: FontWeight.w700,
                fontSize: 13),
            controller: state,
            decoration: InputDecoration(
              hintText: 'Statement Descriptor',
              hintStyle: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color: filedcolor,
                  fontWeight: FontWeight.w700,
                  fontSize: 13),
              filled: true,

              fillColor: Colors.white,
              //fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                //borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffE7EAEB),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE7EAEB), width: 1)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0xffE7EAEB),
                width: 1,
              )),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          // height: 30,
          margin: EdgeInsets.only(
            left: screensize.width * 0.042,
            right: screensize.width * 0.042,
          ),
          child: TextFormField(
            style: TextStyle(
                fontFamily: 'Satoshi-Medium',
                color: filedcolor,
                fontWeight: FontWeight.w700,
                fontSize: 13),
            controller: unit,
            decoration: InputDecoration(
              hintText: 'Unit Label',
              hintStyle: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color: filedcolor,
                  fontWeight: FontWeight.w700,
                  fontSize: 13),
              filled: true,

              fillColor: Colors.white,
              //fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                //borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xffE7EAEB),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE7EAEB), width: 1)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0xffE7EAEB),
                width: 1,
              )),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: Text(
                'Metadata',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: filedcolor,
                    fontWeight: FontWeight.w700,
                    fontSize: 13),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 135,
              height: 28,
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.white),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.add_circled,
                    color: filedcolor,
                  ),
                  Text(
                    '   Add Metadata',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: filedcolor,
                        fontWeight: FontWeight.w700,
                        fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: Text(
                'Feature list',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: filedcolor,
                    fontWeight: FontWeight.w700,
                    fontSize: 13),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: Icon(
                Icons.add,
                color: splashcolor,
              ),
            ),
            Text(
              'Add another line',
              style: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color: splashcolor,
                  fontWeight: FontWeight.w700,
                  fontSize: 13),
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.039,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      CupertinoIcons.multiply,
                      color: splashcolor,
                    )),
              ),
              SizedBox(
                width: screensize.width * 0.26,
              ),
              Container(
                child: Text(
                  'Add a product',
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Satoshi Variable',
                      color: filedcolor,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.066,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: SvgPicture.asset(
                'images/Container.svg',
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.032,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: Text(
                'Product details',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Satoshi Variable',
                    color: filedcolor,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ]),
          SizedBox(
            height: screensize.height * 0.028,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
              elevation: 0.5,
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          top: screensize.height * 0.009),
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                  ),
                  Container(
                    height: 25,
                    margin: EdgeInsets.only(
                      left: screensize.width * 0.037,
                      bottom: 5
                    ),
                    child: TextFormField(
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: Color(0xff94A5AB),
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                      controller: ename,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              )),
          //end first contianer
          //end logout
          SizedBox(
            height: screensize.height * 0.0073,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
              elevation: 0.5,
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          top: screensize.height * 0.009),
                      child: Text(
                        'Description',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                  ),
                  Container(
                    // height: 30,
                    margin: EdgeInsets.only(
                      left: screensize.width * 0.037,
                    ),
                    child: TextFormField(
                      maxLines: 4,
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: Color(0xff94A5AB),
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                      controller: decription,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: screensize.height * 0.020,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (addi == true) {
                  addi = false;
                } else if (addi == false) {
                  addi = true;
                }
              });
            },
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Text(
                  'Additional option  ',
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Satoshi Variable',
                      color: splashcolor,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: splashcolor,
              )
            ]),
          ),
          addi
              ? SizedBox(
                  height: screensize.height * 0.020,
                )
              : SizedBox(),
          addi ? additional() : SizedBox(),
          SizedBox(
            height: screensize.height * 0.020,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: Text(
                'Pricing Model',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Satoshi Variable',
                    color: filedcolor,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ]),
          SizedBox(
            height: 4,
          ),
          Container(
            // width: screensize.width*0.91,
            margin: EdgeInsets.only(
                left: screensize.width * 0.042,
                right: screensize.width * 0.042),
            child: DropdownButtonFormField(
              borderRadius: BorderRadius.circular(8),
              dropdownColor: Colors.white,
              decoration: InputDecoration(
                  // contentPadding: EdgeInsets.only(left: 10,right: 10),
                  filled: true,
                  fillColor: Colors.white,
                  //fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffE7EAEB),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffE7EAEB), width: 1)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xffE7EAEB),
                    width: 1,
                  )),
                  // hintText: 'Mobile No.',
                  // hintStyle: TextStyle(
                  //   color: Colors.white,
                  // ),
                  errorStyle: TextStyle(fontSize: 12, color: Colors.red)),

              // hint: Text(
              //   'Immunization',
              //   style: TextStyle(color: Colors.white),
              // ),
              // Initial Value
              value: item,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: <String>[
                'Standar Pricing',
              ].map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: TextStyle(
                      color: filedcolor,
                    ),
                  ),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  item = newValue!;
                });
              },
            ),
          ),

          SizedBox(
            height: 6,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: Text(
                'Price',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Satoshi Variable',
                    color: filedcolor,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ]),
          SizedBox(
            height: 4,
          ),
          Container(
            margin: EdgeInsets.only(
                left: screensize.width * 0.042,
                right: screensize.width * 0.042),
            child: DropdownButtonFormField(
              alignment: Alignment.center,

              borderRadius: BorderRadius.circular(8),
              dropdownColor: Colors.white,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  //fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffE7EAEB),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffE7EAEB), width: 1)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xffE7EAEB),
                    width: 1,
                  )),
                  // hintText: 'Mobile No.',
                  // hintStyle: TextStyle(
                  //   color: Colors.white,
                  // ),
                  errorStyle: TextStyle(fontSize: 12, color: Colors.red)),

              // hint: Text(
              //   'Immunization',
              //   style: TextStyle(color: Colors.white),
              // ),
              // Initial Value
              value: price,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: <String>['0.00', '23.4', '25.5', '34.4', '44']
                  .map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    '\$' + items,
                    style: TextStyle(
                      color: filedcolor,
                    ),
                  ),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  price = newValue!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
