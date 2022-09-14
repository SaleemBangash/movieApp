// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:movie_app/screens/media_library.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../main.dart';
import '../utils/size_config.dart';
import '../widgets/text_field.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Watch",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  Icon(Icons.search),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: sizeConfig!.height(0.19),
                      // width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: AssetImage("assets/freeGuy.jpg"),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Free Guy",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: sizeConfig!.height(0.19),
                      // width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: AssetImage("assets/kingman.jpg"),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "The King's Man",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: sizeConfig!.height(0.19),
                      // width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: AssetImage("assets/jojo.jpg"),
                              fit: BoxFit.fill,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.89),
                                  BlendMode.dstATop))),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "JoJo Rabbit",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
