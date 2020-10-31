import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:screensNew/AddPromotion.dart';

class PromotionPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PromotionPage> {
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GradientAppBar(
        title: Text('Promotion'),
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => AddPromotionPage()));
            },
            child: new Image.asset(
              'assets/add.png',
              width: 50.0,
              height: 50.0,
            ),
          ),
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    height: 225,
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
                                          fontSize: 14, color: Colors.grey)),
                                  Text('01',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Promotion Name',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey)),
                                  Text('Eid Sale',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Status',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey)),
                                  Text('Suspended',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.red))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Mobile',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey)),
                                  Text('0900-78601',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Promotion Discount %',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey)),
                                  Text('20%',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Type',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey)),
                                  Text('Individual',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/edit.png'),
                                FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Edit Post',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                    )),
                              ],
                            ),
                            Switch(
                              value: status,
                              onChanged: (value) {
                                setState(() {
                                  status = value;
                                  print(status);
                                });
                              },
                              inactiveTrackColor: Colors.red,
                              activeTrackColor: Colors.red,
                              activeColor: Colors.red,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 225,
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
                                          fontSize: 14, color: Colors.grey)),
                                  Text('02',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Promotion Name',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey)),
                                  Text('Azadi Sale',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Status',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey)),
                                  Text('Active',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.green))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Mobile',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey)),
                                  Text('0900-78601',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Promotion Discount %',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey)),
                                  Text('20%',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Type',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey)),
                                  Text('Individual',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/edit.png'),
                                FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Edit Post',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                    )),
                              ],
                            ),
                            Switch(
                              value: status,
                              onChanged: (value) {
                                setState(() {
                                  status = value;
                                  print(status);
                                });
                              },
                              inactiveTrackColor: Colors.green,
                              activeTrackColor: Colors.green,
                              activeColor: Colors.green,
                            ),
                          ],
                        )
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
