import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screensNew/ForgotPassword/Verify.dart';

final size = 0;

// ignore: must_be_immutable
class ForgotPassword extends StatefulWidget {
  ForgotPassword();

  String a;

  @override
  State<ForgotPassword> createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
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
          height: 185,
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
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        left: 40,
                        right: 40,
                      ),
                      width: 150,
                      height: 170,
//                            color: Colors.green,
                      child: Container(
                        height: 100,
                        width: 500,
                        decoration: BoxDecoration(
                            image: new DecorationImage(
                          image: new AssetImage('assets/namelogo.png'),
                        )),
                      ),
                    )
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
    return Container(
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
      margin: EdgeInsets.only(top: 140, left: 0, right: 0),
      height: 900,
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
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
//                            color: Colors.green,
                  child: Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                        image: new DecorationImage(
                      image: new AssetImage('assets/forgotpassword.png'),
                    )),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Text(
                  "Forgot password",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 280,
                    child: Text(
                      "Enter your registered email address.We will \n      sent the recovery code to your email",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.normal),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 300,
//                            height:100,
//                          color:Colors.blue,
                    margin:
                        EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 10),
                    child: TextField(
//                      controller: _phone_numberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF939da7))),
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintStyle: TextStyle(fontFamily: "circular"),
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        labelStyle: TextStyle(
                          fontFamily: "circular",
                          color: Color(0xFF979ca0),
                        ),
                      ),

                      onChanged: (text) {
                        setState(() {
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Verify()));

//
                  },
//

                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(3.0),
                      side: BorderSide(color: Color(0xFF25aae1))),
                  textColor: Colors.white,
                  elevation: 0.0,
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    width: 302,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      color: Color(0xFF25aae1),
                    ),
                    padding: const EdgeInsets.all(15.0),
                    child: const Text('Send',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, fontFamily: "circular")),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

// ignore: unused_element

}
