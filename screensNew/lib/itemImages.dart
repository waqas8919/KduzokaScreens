import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:screensNew/ProductSearch.dart';

class ItemImages extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ItemImages> {
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GradientAppBar(
          title: Text('Add Product'),
          centerTitle: true,
          backgroundColorStart: color2,
          backgroundColorEnd: color1,
          leading: IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
            ),
          )),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/circle.png',
                      width: 10.0,
                      height: 10.0,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/circle.png',
                      width: 10.0,
                      height: 10.0,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/circle.png',
                      width: 10.0,
                      height: 10.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Item Images',
                      style: TextStyle(fontSize: 23),
                    )
                  ],
                ),
              ),
              Divider(
                height: 40,
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Select\nImages',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black38,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Image.asset('assets/cam.png'),
                            )),
                        Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black38,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Image.asset('assets/pic.png'),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      '3 Images Selected',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/veg1.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: Center(
                      child: Image.asset('assets/cross.png'),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/veg1.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: Center(
                      child: Image.asset('assets/cross.png'),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/veg1.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: Center(
                      child: Image.asset('assets/cross.png'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left,
                        size: 30,
                      ),
                      Text(
                        'Back',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )),
              Container(
                height: 50,
                width: 150,
                child: FlatButton(
                  color: Colors.green[300],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ProductSearch()));
                  },
                  child: Text(
                    "Post",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
