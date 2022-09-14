// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:movie_app/main.dart';
import 'package:movie_app/screens/watch.dart';
import 'package:movie_app/widgets/bottom_bar.dart';

class LibraryOne extends StatefulWidget {
  LibraryOne({
    Key? key,
  }) : super(key: key);

  @override
  State<LibraryOne> createState() => _LibraryOneState();
}

class _LibraryOneState extends State<LibraryOne> {
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
                "assets/jojo.jpg",
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
                        child: Icon(Icons.arrow_back_ios, color: Colors.white)),
                    Text("Watch",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Positioned(
                top: sizeConfig!.height(0.35),
                left: sizeConfig!.height(0.08),
                child: Column(
                  children: [
                    Text("In theaters December 22, 2021",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: sizeConfig!.width(0.49),
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
                      width: sizeConfig!.width(0.49),
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
                      width: sizeConfig!.width(0.19),
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
                      width: sizeConfig!.width(0.19),
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
                      width: sizeConfig!.width(0.19),
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
                      width: sizeConfig!.width(0.19),
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
