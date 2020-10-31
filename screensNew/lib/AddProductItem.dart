import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:screensNew/itemImages.dart';

class AddProductItem extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AddProductItem> {
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  TextEditingController itemprice =
      new TextEditingController(text: 'EX 2000/-');
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
                    width: 10,
                  ),
                  Text(
                    'Item Price',
                    style: TextStyle(fontSize: 23),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextField(
                  controller: itemprice,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                    labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                    labelText: 'Price',
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
            ),
          ],
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
                  color: Colors.grey,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ItemImages()));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 20.0, color: Colors.black38),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
