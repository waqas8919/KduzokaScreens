import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:screensNew/AddProductItem.dart';

class AddProduct extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AddProduct> {
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  //static const color3 = const Color(0xff92278F);
  var currentSelectedValue;
  final deviceTypes = ["Bakery", "Bakery1", "Bakery2"];
  TextEditingController itemDescription = new TextEditingController(
      text:
          'Biscuit is a term used for a variety of primarily flour-based baked food products. The term is applied to two distinct products. In North America, a biscuit is typically a soft, leavened quick bread, and is covered in the article Biscuit.');
  TextEditingController itemName =
      new TextEditingController(text: 'LU Tiger Tiki Pack Box -24 pcs');
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
        child: SingleChildScrollView(
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
                      width: 10,
                    ),
                    Text(
                      'Item Information',
                      style: TextStyle(fontSize: 23),
                    )
                  ],
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
                              "Bakery items",
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              "Biscuits",
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
                    controller: itemName,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelText: 'Item Name',
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
                    controller: itemDescription,
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                      labelText: 'Item Description',
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
                      builder: (context) => AddProductItem()));
            },
            child: Text(
              "Next",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
