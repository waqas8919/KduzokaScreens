import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:screensNew/AddProduct..dart';

class EditStore extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<EditStore> {
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  //static const color3 = const Color(0xff92278F);
  var currentSelectedValue;
  final deviceTypes = ["Bakery", "Bakery1", "Bakery2"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: GradientAppBar(
            title: Text('Edit Store'),
            centerTitle: true,
            backgroundColorStart: color2,
            backgroundColorEnd: color1,
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                })),
        body: SingleChildScrollView(
          child: Container(
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
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 25.0, bottom: 20.0),
                          child: new CircleAvatar(
                            radius: 75,
                            backgroundColor: Colors.transparent,
                            child: CircleAvatar(
                              radius: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: new Image.asset(
                                      'assets/camera.png',
                                      width: 50.0,
                                      height: 50.0,
                                    ),
                                  )
                                ],
                              ),
                              backgroundImage: AssetImage('assets/grocery.jpg'),
                            ),
                          ),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17),
                        hintText: 'PG103435',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        hintText: 'Grocery Store',
                        labelText: 'Grocery Store',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      maxLines: 3,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        hintText: '1046 Frank Avenue',
                        labelText: '1046 Frank Avenue',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        hintText: '12345-1234567-1',
                        labelText: '12345-1234567-1',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        hintText: 'grocery@gmail.com',
                        labelText: 'grocery@gmail.com',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        hintText: '(799)832-6320',
                        labelText: '(799)832-6320',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: FormField<String>(
                      builder: (FormFieldState<String> state) {
                        return InputDecorator(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              hint: Text(
                                "ID Type",
                                style: TextStyle(color: Colors.black),
                              ),
                              value: currentSelectedValue,
                              isDense: true,
                              onChanged: (newValue) {
                                setState(() {
                                  currentSelectedValue = newValue;
                                });
                                print(currentSelectedValue);
                              },
                              items: deviceTypes.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Holiday Mode'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () async {
//
                        },
//

                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(3.0),
                            side: BorderSide(color: Color(0xFF25aae1))),
                        textColor: Colors.black,
                        elevation: 0.0,
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Container(
                            width: 120,
                            height: 60,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                color: Colors.white),
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Yes',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontFamily: "circular"))),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      RaisedButton(
                        onPressed: () async {},
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(3.0),
                            side: BorderSide(color: Color(0xFF25aae1))),
                        textColor: Colors.black,
                        elevation: 0.0,
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Container(
                          width: 120,
                          height: 60,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              color: Colors.white),
                          padding: const EdgeInsets.all(15.0),
                          child: const Text('No',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontFamily: "circular")),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => AddProduct()));
                      },
                      child: Text(
                        "Update",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
