import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

final size = 0;

// ignore: must_be_immutable
class WalletPage extends StatefulWidget {
  WalletPage();

  String a;

  @override
  State<WalletPage> createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<WalletPage> {
  @override
  void initState() {
    super.initState();
  }

  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: GradientAppBar(
          title: Text('My Wallet'),
          centerTitle: true,
          backgroundColorStart: color2,
          backgroundColorEnd: color1,
          leading: IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
              size: 30,
            ),
          )),
      body: Stack(
        children: <Widget>[
          //getOverlayWidget(),
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
          height: 400,
          margin: EdgeInsets.only(top: 0, left: 5, right: 5),
          decoration: new BoxDecoration(
            border: new Border.all(
                width: 0,
                color: Colors
                    .transparent), //color is transparent so that it does not blend with the actual color specified
            borderRadius: const BorderRadius.all(const Radius.circular(0.0)),
            gradient: LinearGradient(
              colors: <Color>[color2, color1],
            ), // Specifies the background color and the opacity
          ),
        ),
        Container(
          height: 185,
//          width:,
          margin: EdgeInsets.only(left: 0, bottom: 0),
          decoration: new BoxDecoration(
            border: new Border.all(
                width: 0,
                color: Colors
                    .transparent), //color is transparent so that it does not blend with the actual color specified
            borderRadius: const BorderRadius.all(const Radius.circular(0.0)),
            gradient: LinearGradient(
              colors: <Color>[color2, color1],
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
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Icon(
                //       Icons.keyboard_arrow_left,
                //       color: Colors.white,
                //       size: 30,
                //     ),
                //     Text('My Wallet',
                //         style: TextStyle(
                //           fontSize: 17,
                //           color: Colors.white,
                //         ))
                //   ],
                // ),
              ],
            ),
          ),
        ),
        // Container(
        //     width: 342,
        //     margin: EdgeInsets.only(top: 115, left: 0),
        //     child: Column(
        //       children: <Widget>[],
        //     )),
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
          colors: <Color>[color2, color1],
        ), // Specifies the background color and the opacity
      ),
      margin: EdgeInsets.only(top: 0, left: 0, right: 0),
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
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Enter Your Voucher Code',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 300,
//                            height:100,
//                          color:Colors.blue,
                    margin:
                        EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 0),
                    child: TextField(
//                      controller: _phone_numberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF939da7))),
                        border: OutlineInputBorder(),
                        labelText: 'Voucher Number',
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => WalletSendCredit()));
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CustomDialog();
                        });

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

class CustomDialog extends StatelessWidget {
  dialogContent(BuildContext context) {
    return Container(
      height: 300,
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // To make the card compact
          children: <Widget>[
            Image.asset('assets/credit.png', height: 100),
            SizedBox(
              height: 15,
            ),
            Text(
              "Your RS 300/- Successfully",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "Added In your Wallet",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}
