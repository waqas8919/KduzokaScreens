import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:screensNew/saletax.dart';

class AddPromotionPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AddPromotionPage> {
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  var currentSelectedValue;
  final deviceTypes = ["User1", "User2", "User3"];
  TextEditingController pcdesc =
      new TextEditingController(text: 'Promo Code Description');
  TextEditingController pcdiscount = new TextEditingController(text: 'EX 10%');
  TextEditingController minimum = new TextEditingController(text: '300');
  TextEditingController voucherno = new TextEditingController(text: '01');
  TextEditingController redeem = new TextEditingController(text: '01');
  TextEditingController validity =
      new TextEditingController(text: '01/01/2020');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GradientAppBar(
          title: Text('Add Promotion'),
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
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            labelText: 'Select Promo Type',
                            labelStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              "For All Users",
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
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    controller: pcdesc,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelText: 'Promo Code Description',
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Divider(
                  height: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Select Value Type',
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        hintText: 'Percentage %',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        hintText: 'Value',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    controller: pcdiscount,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelText: 'Promo Code Discount',
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    controller: minimum,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelText: 'Minimum Basket Value',
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
                            labelText: 'Promo Bearear',
                            labelStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              "Select",
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
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            labelText: 'Commision on',
                            labelStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              "Select",
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
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    controller: voucherno,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelText: 'Total No of Vouchers',
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    controller: redeem,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelText: 'No of Redeem Allowed (for Users)',
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    controller: validity,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelText: 'Promo Code Validity',
                      suffixIcon: Icon(Icons.date_range),
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
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => SaleTaxReportPage()));
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
