import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

final size = 0;

// ignore: must_be_immutable
class WalletSendCredit extends StatefulWidget {
  WalletSendCredit();

  String a;

  @override
  State<WalletSendCredit> createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<WalletSendCredit> {
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
  TextEditingController amountController = new TextEditingController();

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
              padding: const EdgeInsets.only(left: 15.0, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Send Credit',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
//                      controller: _phone_numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF939da7))),
                  border: OutlineInputBorder(),
                  hintText: 'Enter Mobile Number',
                  hintStyle: TextStyle(fontFamily: "circular"),
                  isDense: true,
                  prefixIcon: CountryCodePicker(
                    initialSelection: 'PK',
                    showCountryOnly: true,
                    showOnlyCountryWhenClosed: false,
                    favorite: ['+92', 'PK'],
                  ),
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
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      controller: amountController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        hintText: 'Enter Amount',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 50,
                    child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        if (amountController.text != '') {
                          _showAmmountAlertDialog(amountController.text);
                        } else {
                          _showAlertDialog('Alert', 'Please Enter Ammount');
                        }
                      },
                      child: Text(
                        "Send",
                        style: TextStyle(fontSize: 20.0),
                      ),
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

  void _showAlertDialog(String title, String message) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }

  void _showAmmountAlertDialog(String message) {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 300,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Image.asset('assets/dollar.png', height: 100),
              SizedBox(
                height: 15,
              ),
              Text(
                "Your RS $message",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "Sent Successfully",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }
// ignore: unused_element

}
