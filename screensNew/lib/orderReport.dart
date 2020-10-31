import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:screensNew/riderDetails.dart';

class OrderReportPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<OrderReportPage> {
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GradientAppBar(
        title: Text('Order Reprot Detail'),
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
                        builder: (context) => RiderReportPage()));
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                            SizedBox(
                              height: 10,
                            ),
                            Text('Email',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text('Richard@gmail.com',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Created Date & Time',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text('11/01/2020 . 01:00am',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Status',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text('Rejected',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.red)),
                            SizedBox(
                              height: 10,
                            ),
                            Text('',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text('',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Text('',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text('',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Text('',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
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
                        'Product Name',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Qty',
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
                    'Lays Salted',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '01',
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
                    'Prince Halfroll',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '09',
                    style: TextStyle(fontSize: 18),
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
