import 'package:flutter/material.dart';

final size = 0;

// ignore: must_be_immutable
class ResetPassword extends StatefulWidget {
  ResetPassword();

  String a;

  @override
  State<ResetPassword> createState() => ResetPasswordState();
}

class ResetPasswordState extends State<ResetPassword> {
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
                          print('click on edit');
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
                          left: 70, right: 0, top: 40, bottom: 10),
                      child: Text(
                        "Reset Password",
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
            SizedBox(
              height: 40,
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
                        labelText: 'New Password',
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
                        labelText: 'Confirm Paasword',
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
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () async {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyHomePage()));

                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CustomDialog();
                        });
                  },
//

                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(3.0)),
                  textColor: Colors.white,
                  elevation: 10.0,
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                      width: 300,
                      height: 60,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF853598),
                            Color(0xFF2e9fda),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(15.0),
                      child: const Text('Password Update',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 20, fontFamily: "circular"))),
                ),
              ],
            ),
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
            Image.asset('assets/forgotpassword.png', height: 150),
            Text(
              "Your Password Has Been",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "Updated Successfully",
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
