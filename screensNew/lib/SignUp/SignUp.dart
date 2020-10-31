import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screensNew/Login/Login.dart';

bool enabled = false;

class SignUpPage extends StatefulWidget {
  SignUpPage();

  @override
  State createState() => new SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  void initState() {
    super.initState();
  }

  TextEditingController phonecontroller = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;
  bool isError = false;
  bool isError1 = false;
  bool _obscureText = true;
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  static const color3 = const Color(0xff92278F);
//  SetSharedVariables(String token,int userId,int maslaqId) async {
//    SharedPreferences pref = await SharedPreferences.getInstance();
//    print("00000000000000000--------------------->   $token");
//    pref.setString('Token', token);
//    pref.setInt('userId', userId);
//    pref.setInt('maslaqId',maslaqId );
//
//
//  }

//  bool validatePassword(String value) {
//    if ((value.length > 7) && value.isNotEmpty) {
//      Text("Password should contains more then 7 character");
//      print('true');
//      return true;
//    }
//    return false;
//  }

//  Future<bool> _exitApp(BuildContext context) {
//
//    onPressed: () {}
//
//    return showDialog(
//          context: context,
//          // ignore: deprecated_member_use
//          child: new AlertDialog(
//            title: new Text('Do you want to exit this application?'),
//            content: new Text('We hate to see you leave...'),
//            actions: <Widget>[
//              new FlatButton(
//                onPressed: () => Navigator.of(context).pop(false),
//                child: new Text('No'),
//              ),
//              new FlatButton(
//                onPressed: () =>
//                    SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
//                child: new Text('Yes'),
//              ),
//            ],
//          ),
//        ) ??
//        false;
//  }

//  bool _value2 = false;
//
//  void _value2Changed(bool value) => setState(() => _value2 = value);

  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = MediaQuery.of(context).size.width;
    double defaultScreenHeight = MediaQuery.of(context).size.height;
    print(defaultScreenWidth);
    print(defaultScreenHeight);
    return new WillPopScope(
      onWillPop: () =>
          SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
      child: Stack(children: <Widget>[
        new Container(
          height: double.infinity,
          width: double.infinity,
          decoration: new BoxDecoration(
            color: Colors.white,
            image: new DecorationImage(
              image: new AssetImage(
                'assets/logo.png',
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [color2, color1, color3],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          // resizeToAvoidBottomPadding: false,
          //backgroundColor: Colors.green,
          child: new Stack(children: <Widget>[
            new Theme(
              data: new ThemeData(
                  inputDecorationTheme: new InputDecorationTheme(
                // hintStyle: new T extStyle(color: Colors.blue, fontSize: 20.0),

                labelStyle: new TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              )),
              isMaterialAppTheme: true,
              child: SingleChildScrollView(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            left: 40,
                            right: 40,
                          ),
                          width: 280,
                          height: 100,
//                            color: Colors.green,
                          child: Container(
                            height: 100,
                            width: 500,
                            decoration: BoxDecoration(
                                image: new DecorationImage(
                              image: new AssetImage('assets/logo.png'),
                            )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
//                      height:450,
                      width: 320,
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Color(0xFF25aae1))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    width: 250,
//                            height:100,
//                          color:Colors.blue,
                                    margin: EdgeInsets.only(
                                        left: 0, right: 0, top: 30, bottom: 10),
                                    child: TextField(
                                      controller: phonecontroller,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF939da7))),
                                        border: OutlineInputBorder(),
                                        labelText: 'Name *',
                                        hintStyle:
                                            TextStyle(fontFamily: "circular"),
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
                                    width: 250,
//                              height:200,
//                          color:Colors.blue,
                                    margin: EdgeInsets.only(
                                        left: 0, right: 0, top: 10, bottom: 10),
                                    child: TextField(
                                      controller: _passwordController,
                                      obscureText: _obscureText,
                                      cursorColor: Color(0xFF324558),
                                      decoration: InputDecoration(
                                        suffixIcon: Container(
//                                    color: Colors.grey,
                                          height: 5,
                                          width: 5,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Icon(
                                              Icons.location_on,
                                              color: Color(0xFF324457),
                                            ),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF939da7))),
                                        border: OutlineInputBorder(),
                                        labelText: 'Address *',
                                        isDense: true,
                                        hintStyle: TextStyle(
                                          fontFamily: "circular",
                                        ),
                                        contentPadding: EdgeInsets.all(12),
                                        labelStyle: TextStyle(
                                          color: Color(0xFF979ca0),
                                          fontFamily: "circular",
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
                                    width: 250,
//                            height:100,
//                          color:Colors.blue,
                                    margin: EdgeInsets.only(
                                        left: 0, right: 0, top: 10, bottom: 10),
                                    child: TextField(
                                      controller: phonecontroller,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF939da7))),
                                        border: OutlineInputBorder(),
                                        labelText: 'City *',
                                        hintStyle:
                                            TextStyle(fontFamily: "circular"),
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
                                    width: 250,
//                              height:200,
//                          color:Colors.blue,
                                    margin: EdgeInsets.only(
                                        left: 0, right: 0, top: 10, bottom: 10),
                                    child: TextField(
                                      controller: _passwordController,
                                      obscureText: _obscureText,
                                      cursorColor: Color(0xFF324558),
                                      decoration: InputDecoration(
                                        suffixIcon: Container(
//                                    color: Colors.grey,
                                          height: 5,
                                          width: 5,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Icon(
                                              Icons.mail,
                                              color: Color(0xFF324457),
                                            ),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF939da7))),
                                        border: OutlineInputBorder(),
                                        labelText: 'Email *',
                                        isDense: true,
                                        hintStyle: TextStyle(
                                          fontFamily: "circular",
                                        ),
                                        contentPadding: EdgeInsets.all(12),
                                        labelStyle: TextStyle(
                                          color: Color(0xFF979ca0),
                                          fontFamily: "circular",
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
                                    width: 250,
//                            height:100,
//                          color:Colors.blue,
                                    margin: EdgeInsets.only(
                                        left: 0, right: 0, top: 10, bottom: 10),
                                    child: TextField(
                                      controller: phonecontroller,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF939da7))),
                                        border: OutlineInputBorder(),
                                        labelText: 'Phone Number ',
                                        hintStyle:
                                            TextStyle(fontFamily: "circular"),
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
                                    width: 250,
//                            height:100,
//                          color:Colors.blue,
                                    margin: EdgeInsets.only(
                                        left: 0, right: 0, top: 10, bottom: 10),
                                    child: TextField(
                                      controller: phonecontroller,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        suffixIcon: Container(
//                                    color: Colors.grey,
                                          height: 5,
                                          width: 5,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Icon(
                                              Icons.phone,
                                              color: Color(0xFF324457),
                                            ),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF939da7))),
                                        border: OutlineInputBorder(),
                                        labelText: 'Mobile Number *',
                                        hintStyle:
                                            TextStyle(fontFamily: "circular"),
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
                                    width: 250,
//                              height:200,
//                          color:Colors.blue,
                                    margin: EdgeInsets.only(
                                        left: 0, right: 0, top: 10, bottom: 10),
                                    child: TextField(
                                      controller: _passwordController,
                                      obscureText: _obscureText,
                                      cursorColor: Color(0xFF324558),
                                      decoration: InputDecoration(
                                        suffixIcon: Container(
//                                    color: Colors.grey,
                                          height: 5,
                                          width: 5,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (_obscureText == true) {
                                                  _obscureText = false;
                                                } else {
                                                  _obscureText = true;
                                                }
                                              });
                                            },
                                            child: Icon(
                                              _obscureText
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: Color(0xFF324457),
                                            ),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF939da7))),
                                        border: OutlineInputBorder(),
                                        labelText: 'Password',
                                        isDense: true,
                                        hintStyle: TextStyle(
                                          fontFamily: "circular",
                                        ),
                                        contentPadding: EdgeInsets.all(12),
                                        labelStyle: TextStyle(
                                          color: Color(0xFF979ca0),
                                          fontFamily: "circular",
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
                                    width: 250,
//                              height:200,
//                          color:Colors.blue,
                                    margin: EdgeInsets.only(
                                        left: 0, right: 0, top: 10, bottom: 5),
                                    child: TextField(
                                      controller: _passwordController,
                                      obscureText: _obscureText,
                                      cursorColor: Color(0xFF324558),
                                      decoration: InputDecoration(
                                        suffixIcon: Container(
//                                    color: Colors.grey,
                                          height: 5,
                                          width: 5,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (_obscureText == true) {
                                                  _obscureText = false;
                                                } else {
                                                  _obscureText = true;
                                                }
                                              });
                                            },
                                            child: Icon(
                                              _obscureText
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: Color(0xFF324457),
                                            ),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF939da7))),
                                        border: OutlineInputBorder(),
                                        labelText: ' Confirm Password *',
                                        isDense: true,
                                        hintStyle: TextStyle(
                                          fontFamily: "circular",
                                        ),
                                        contentPadding: EdgeInsets.all(12),
                                        labelStyle: TextStyle(
                                          color: Color(0xFF979ca0),
                                          fontFamily: "circular",
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
                            Container(
                              width: 280,
                              margin: EdgeInsets.only(
                                  right: 0, top: 20, bottom: 10),
//                        color: Colors.blue,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                          margin: EdgeInsets.only(left: 0),
                                          child: Text(
                                            "Already Have An Account ?",
                                            style: TextStyle(
                                                fontFamily: "circular",
//                                                decoration: TextDecoration.underline,
                                                color: Color(0xFF979ca0)),
                                          )),
                                      Container(
                                          margin: EdgeInsets.only(left: 0),
                                          child: Text(
                                            "LogIn",
                                            style: TextStyle(
                                                fontFamily: "circular",
                                                decoration:
                                                    TextDecoration.underline,
                                                color: Color(0xFF979ca0)),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RaisedButton(
                                  onPressed: () async {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  },
//

                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(3.0)),
                                  textColor: Colors.white,
                                  elevation: 10.0,
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    width: 250,
                                    height: 60,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(3)),
                                      gradient: LinearGradient(
                                        colors: <Color>[
                                          Color(0xFF853598),
                                          Color(0xFF2e9fda),
                                        ],
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(15.0),
                                    child: (_isLoading != true)
                                        ? const Text('SignUp',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "circular"))
                                        : Center(
                                            child: CircularProgressIndicator(
//                                  strokeWidth: 20.0,
                                              backgroundColor:
                                                  Color(0xFF198e65),
                                            ),
                                          ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(
                                      top: 30,
                                    ),
//                            color:Colors.blue,
//                           width
                                    child: (isError1 == true)
                                        ? Text(
                                            'Please Enter the correct credentials or please fill in all the fields',
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),
                                          )
                                        : Container(
                                            child: (isError == true)
                                                ? Text(
                                                    '',
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                    ),
                                                  )
                                                : Container(),
                                          )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
