// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:movie_app/main.dart';
import 'package:movie_app/screens/watch.dart';
import 'package:movie_app/widgets/bottom_bar.dart';

class Library extends StatefulWidget {
  Library({
    Key? key,
  }) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  bool _type = false;

  bool _oneBeenPressed = false;
  bool _twoBeenPressed = false;
  bool _threeBeenPressed = false;
  bool _fourBeenPressed = false;
  bool _fiveBeenPressed = false;
  bool _sixBeenPressed = false;
  int _itemCount = 0;
  bool aChecked = false;
  bool bChecked = false;
  bool cChecked = false;
  bool dChecked = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: Color(0xffF5ECE3),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Image.asset(
                "assets/kingman.jpg",
                width: width / 0.4,
                height: sizeConfig!.height(0.60),
                fit: BoxFit.fill,

                //fit: BoxFit.cover,
              ),
              Positioned(
                top: 50,
                left: 20,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomBar()));
                        }),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Text("Watch",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Positioned(
                top: 300,
                left: 100,
                child: Column(
                  children: [
                    Text("In theaters December 22, 2021",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text("Get Tickets",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.play_arrow),
                          Text("Watch Trailer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text("Genres",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text("Action",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 233, 92, 174),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text("Thriller",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 142, 29, 235),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text("Science",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 243, 205, 33),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text("Fiction",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text("OverView",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                    "OverView abcd abcd abcdb ahbdhab bhhdbashdba \naaksbdbabk adbabd adah iuaiudaui dhb",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

const String _svg_uvz71 =
    '<svg viewBox="193.0 333.0 176.6 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(193.0, 333.0)" d="M 11.04005432128906 0 L 165.600830078125 0 C 171.6980590820312 0 176.640869140625 3.581721782684326 176.640869140625 8 L 176.640869140625 35 C 176.640869140625 39.41827774047852 171.6980590820312 43 165.600830078125 43 L 11.04005432128906 43 C 4.942800998687744 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 4.942800998687744 0 11.04005432128906 0 Z" fill="#baa378" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_t4ec1q =
    '<svg viewBox="5.0 0.0 1.0 10.0" ><path transform="translate(-12.99, -7.5)" d="M 18 7.500000476837158 L 18 17.51696014404297" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_s0unte =
    '<svg viewBox="0.0 5.0 10.0 1.0" ><path transform="translate(-7.5, -12.99)" d="M 7.500000476837158 18 L 17.51696014404297 18" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ggrqju =
    '<svg viewBox="287.5 27.5 12.7 1.0" ><path transform="translate(280.0, 9.5)" d="M 7.5 18 L 20.2078857421875 18" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_zi99uo =
    '<svg viewBox="9.0 0.0 1.0 18.0" ><path transform="translate(-8.99, -7.5)" d="M 18 7.5 L 18 25.525146484375" fill="none" stroke="#2a2a2a" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_jg5kzm =
    '<svg viewBox="0.0 9.0 18.0 1.0" ><path transform="translate(-7.5, -8.99)" d="M 7.5 18 L 25.525146484375 18" fill="none" stroke="#2a2a2a" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_d8li0 =
    '<svg viewBox="20.0 24.0 31.1 29.3" ><path transform="translate(14.38, 17.67)" d="M 33.98604965209961 18.15213394165039 L 15.10221576690674 18.15213394165039 L 22.42631912231445 11.14570140838623 C 23.47640228271484 10.04267406463623 23.47640228271484 8.260181427001953 22.42631912231445 7.157154083251953 C 21.37623596191406 6.054126739501953 19.67316055297852 6.054126739501953 18.61425399780273 7.157154083251953 L 6.419180393218994 18.98161125183105 C 5.889727115631104 19.49341583251953 5.625000476837158 20.19052886962891 5.625000476837158 20.95823669433594 L 5.625000476837158 20.9935359954834 C 5.625000476837158 21.76124382019043 5.889727115631104 22.45835494995117 6.419180393218994 22.97016143798828 L 18.60543060302734 34.79462051391602 C 19.66433715820312 35.89764785766602 21.36741256713867 35.89764785766602 22.4174919128418 34.79462051391602 C 23.46757507324219 33.69159317016602 23.46757507324219 31.90909767150879 22.4174919128418 30.80607032775879 L 15.09338855743408 23.79963874816895 L 33.97722244262695 23.79963874816895 C 35.4685173034668 23.79963874816895 36.67743301391602 22.53777694702148 36.67743301391602 20.97588920593262 C 36.68626022338867 19.38752365112305 35.47734069824219 18.15213394165039 33.98604965209961 18.15213394165039 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
