import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:screensNew/main.dart';

class RiderReportPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RiderReportPage> {
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GradientAppBar(
        title: Text('Rider Reprot Detail'),
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
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => MyHomePage()));
              })
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ID',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                          Text('001',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Email',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                          Text('Richard@gmail.com',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Rider Name',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                          Text('Jhonny James',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                          Text('',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Order',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Revenue',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '02',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '1432.14',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '00',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '00.0',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
