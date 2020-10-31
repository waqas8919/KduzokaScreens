import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:screensNew/orderReport.dart';

class SaleTaxReportPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SaleTaxReportPage> {
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GradientAppBar(
        title: Text('Sale Tax Report'),
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
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => OrderReportPage()));
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Row(
                  children: <Widget>[
                    // Text input
                    Flexible(
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search Product",
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Colors.blue[200],
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Send Message Button
                    Material(
                      child: new Container(
                          margin: new EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/filter.png')),
                    ),
                  ],
                ),
                width: double.infinity,
                height: 50.0,
                decoration: new BoxDecoration(
                    border: new Border(
                        top: new BorderSide(color: Colors.white, width: 0.5)),
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                      hintText: 'Order Report',
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                      hintText: 'Rider Report',
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    height: 125,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
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
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey)),
                                  Text('001',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('UserName',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey)),
                                  Text('Richard Stanley',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Stauts',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey)),
                                  Text('Rejected',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.red)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Icon(Icons.keyboard_arrow_right),
                                  Text('',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 125,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
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
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey)),
                                  Text('002',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('UserName',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey)),
                                  Text('Chris Clark',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Stauts',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                  Text('Cancel  ',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Icon(Icons.keyboard_arrow_right),
                                  Text('',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
