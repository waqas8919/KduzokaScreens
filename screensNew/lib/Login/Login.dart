import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screensNew/ForgotPassword/ForgotPassword.dart';
import 'package:screensNew/SignUp/SignUp.dart';
import 'package:screensNew/main.dart';

class LoginPage extends StatefulWidget {
  LoginPage();

  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  void initState() {
    super.initState();
  }

  TextEditingController phonecontroller = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;
  bool isError = false;
  bool isError1 = false;
  bool _obscureText = true;

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
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  static const color3 = const Color(0xff92278F);

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
          height: 100,
          width: 100,
          decoration: new BoxDecoration(
            color: Colors.white,
            image: new DecorationImage(
              image: new AssetImage(
                'assets/logo.png',
              ),
              fit: BoxFit.cover,
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
                      height: 80.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 280,
                          height: 140,
//                            color: Colors.green,
                          child: Container(
                            height: 300,
                            decoration: BoxDecoration(
                                image: new DecorationImage(
                              image: new AssetImage('assets/logo.png'),
                            )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 450,
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
                                        left: 0, right: 0, top: 20, bottom: 10),
                                    child: TextField(
                                      controller: phonecontroller,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF939da7))),
                                        border: OutlineInputBorder(),
                                        labelText: 'Email',
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
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RaisedButton(
                                  onPressed: () async {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyHomePage()));
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
                                        ? const Text('Login',
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
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ForgotPassword()));
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 0),
                                            child: Text(
                                              "Forgot Password?",
                                              style: TextStyle(
                                                  fontFamily: "circular",
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Color(0xFF979ca0)),
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 150,
//                            height:
//                            ScreenUtil.instance.setHeight(70.0),
                                  child: Text(
                                    "SignUp As",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
//                                ScreenUtil.instance.setSp(50.0),
                                      fontFamily: "circular",
//                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF324558),
                                    ),
                                  ),
                                ),

//                            height:
//                            ScreenUtil.instance.setHeight(70.0),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                RaisedButton(
                                  onPressed: () async {
//
                                  },
//

                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(3.0),
                                      side:
                                          BorderSide(color: Color(0xFF25aae1))),
                                  textColor: Colors.black,
                                  elevation: 0.0,
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    width: 120,
                                    height: 60,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3)),
                                        color: Colors.white),
                                    padding: const EdgeInsets.all(15.0),
                                    child: (_isLoading != true)
                                        ? const Text('Vendor',
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
                                RaisedButton(
                                  onPressed: () async {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignUpPage()));
                                  },

//

//

                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(3.0),
                                      side:
                                          BorderSide(color: Color(0xFF25aae1))),
                                  textColor: Colors.black,
                                  elevation: 0.0,
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    width: 120,
                                    height: 60,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3)),
                                        color: Colors.white),
                                    padding: const EdgeInsets.all(15.0),
                                    child: const Text('Rider',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "circular")),
                                  ),
                                ),
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
