// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_app/screens/dashboard.dart';

import '../main.dart';
import '../utils/size_config.dart';
import '../widgets/text_field.dart';

class Watch extends StatefulWidget {
  const Watch({Key? key}) : super(key: key);

  @override
  _WatchState createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  void didChangeDependencies() {
    sizeConfig = SizeConfig.init(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              SizedBox(
                width: sizeConfig!.width(0.950),
                child: MyTextField(
                  hintText: "Tv shows, movies and more",
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30.0)),
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.close),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // SizedBox(
              //   height: sizeConfig!.height(0.75),
              //   child: GridView.builder(
              //       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              //           maxCrossAxisExtent: 200,
              //           childAspectRatio: 3 / 2,
              //           crossAxisSpacing: 10,
              //           mainAxisSpacing: 10),
              //       itemCount: 8,
              //       itemBuilder: (BuildContext ctx, index) {
              //         return Padding(
              //           padding: const EdgeInsets.only(left: 5),
              //           child: Container(
              //             height: 70,
              //             // width: 150,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10.0),
              //                 image: DecorationImage(
              //                     image: AssetImage("assets/freeGuy.jpg"),
              //                     fit: BoxFit.fill)),
              //             child: Padding(
              //               padding: const EdgeInsets.all(20.0),
              //               child: Align(
              //                   alignment: Alignment.bottomLeft,
              //                   child: Text(
              //                     "Comedians",
              //                     style: TextStyle(color: Colors.white),
              //                   )),
              //             ),
              //           ),
              //         );
              //       }),
              // ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: sizeConfig!.height(0.75),
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisExtent: sizeConfig!.height(.14),
                      mainAxisSpacing: sizeConfig!.height(.02),
                    ),
                    // shrinkWrap: true,
                    // crossAxisCount: 3,
                    // crossAxisSpacing: 15,
                    // mainAxisSpacing: 15,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          height: 70,
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
                                  "Comedians",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          height: 70,
                          // width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/crime.jpg"),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Crime",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          height: 70,
                          // width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/family.jpg"),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Family",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          height: 70,
                          // width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/docu.jpg"),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Documentries",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          height: 70,
                          // width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/drama.jpg"),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Dramas",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          height: 70,
                          // width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/fantasy.jpg"),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Fantasy",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
