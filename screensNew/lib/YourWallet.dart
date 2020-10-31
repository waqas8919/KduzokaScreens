import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screensNew/WalletSend.dart';
import 'package:screensNew/myWallet.dart';

final size = 0;

// ignore: must_be_immutable
class YourWalletPage extends StatefulWidget {
  YourWalletPage();

  String a;

  @override
  State<YourWalletPage> createState() => MyWalletState();
}

class MyWalletState extends State<YourWalletPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
//            bottomNavigationBar:
      body: Stack(
        children: <Widget>[
          getOverlayWidget(),
          getScrollableBody(),
        ],
      ),
    );
  }

  var selected;
  bool isChecked = true;
  bool status = false;
  List<DropdownMenuItem<String>> timing = [];

  Widget getOverlayWidget() {
    return Stack(
      children: <Widget>[
        Container(
          width: 500,
          height: 700,
          margin: EdgeInsets.only(top: 0, left: 5, right: 5),
          decoration: new BoxDecoration(
            border: new Border.all(
                width: 0,
                color: Colors
                    .transparent), //color is transparent so that it does not blend with the actual color specified
            borderRadius: const BorderRadius.all(const Radius.circular(0.0)),
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF853598),
                Color(0xFF2e9fda),
              ],
            ), // Specifies the background color and the opacity
          ),
        ),
        Container(
          height: 385,
//          width:,
          margin: EdgeInsets.only(left: 0, bottom: 20),
          decoration: new BoxDecoration(
            border: new Border.all(
                width: 0,
                color: Colors
                    .transparent), //color is transparent so that it does not blend with the actual color specified
            borderRadius: const BorderRadius.all(const Radius.circular(0.0)),
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF853598),
                Color(0xFF2e9fda),
              ],
            ), // Specifies the background color and the opacity
          ),
          child: Card(
            elevation: 0.0,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 0, top: 40, bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Image(
                          image: AssetImage(
                            'assets/back1.png',
                          ),
                          fit: BoxFit.cover,

//                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 100, right: 0, top: 40, bottom: 10),
                      child: Text(
                        "My Wallet",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
            width: 342,
            margin: EdgeInsets.only(top: 115, left: 0),
            child: Column(
              children: <Widget>[],
            )),
      ],
    );
  }

  Widget getScrollableBody() {
    return SingleChildScrollView(
      child: Container(
        decoration: new BoxDecoration(
          border: new Border.all(
              width: 0,
              color: Colors
                  .transparent), //color is transparent so that it does not blend with the actual color specified
          borderRadius: const BorderRadius.all(const Radius.circular(0.0)),
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF853598),
              Color(0xFF2e9fda),
            ],
          ), // Specifies the background color and the opacity
        ),
        margin: EdgeInsets.only(top: 90, left: 0, right: 0),
        height: MediaQuery.of(context).size.height,
        width: 600,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          elevation: 0.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: new BoxDecoration(
                  border: new Border.all(
                      width: 0,
                      color: Color(
                          0xFFBCBCBC)), //color is transparent so that it does not blend with the actual color specified
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(0.0)),
                ),
                width: 300,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(

//                            height:100,
//                          color:Colors.blue,
                            margin: EdgeInsets.only(
                                left: 20, right: 0, top: 0, bottom: 10),
                            child: Text(
                              "Your Balance",
                              style: TextStyle(fontSize: 22),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(

//                            height:100,
//                          color:Colors.blue,
                            margin: EdgeInsets.only(
                                left: 20, right: 0, top: 10, bottom: 10),
                            child: Text(
                              "500",
                              style: TextStyle(
                                  fontSize: 24, color: Color(0xFF25AAE1)),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(
                          left: 30, right: 0, top: 30, bottom: 10),
                      child: Text(
                        "How KUDZOKA PAY works?",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFF000000)),
                      )),
                ],
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: new BoxDecoration(
                  border: new Border.all(
                      width: 0,
                      color: Color(
                          0xFFBCBCBC)), //color is transparent so that it does not blend with the actual color specified
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(0.0)),
                ),
                width: 300,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WalletPage()));
                          },
                          child: Container(

//                            height:100,
//                          color:Colors.blue,
                              margin: EdgeInsets.only(
                                  left: 10, right: 0, top: 0, bottom: 20),
                              child: Text(
                                "Add credit through a voucher \ncode ",
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xFF25AAE1)),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 30, right: 0, top: 0, bottom: 20),
                          child: Image(
                            image: AssetImage(
                              'assets/forward1.png',
                            ),
                            fit: BoxFit.cover,

//                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: new BoxDecoration(
                  border: new Border.all(
                      width: 0,
                      color: Color(
                          0xFFBCBCBC)), //color is transparent so that it does not blend with the actual color specified
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(0.0)),
                ),
                width: 300,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WalletSendCredit()));
                          },
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: 10, right: 0, top: 0, bottom: 20),
                              child: Text(
                                "Send credit ",
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xFF25AAE1)),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 170, right: 0, top: 0, bottom: 20),
                          child: Image(
                            image: AssetImage(
                              'assets/forward1.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// ignore: unused_element

}
