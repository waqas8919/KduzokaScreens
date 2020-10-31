import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:screensNew/Ordering.dart';

class ProductSearch extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ProductSearch> {
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);

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
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => OrdersTab()));
            },
            child: new Image.asset(
              'assets/doticon.png',
              width: 50.0,
              height: 50.0,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Product",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.blue[200],
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Total Products  01 ',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Text(
                '_________________',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 210,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 15),
                        child: Text(
                          'Product ID:',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 38.0, top: 15),
                        child: Text('Category:',
                            style: TextStyle(fontSize: 20, color: Colors.grey)),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text('500000I',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50.0),
                        child: Text('Biscuits',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Product Name:',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text('Price Biscuit',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Divider(
                      height: 10,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/edit.png'),
                          FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Edit Post',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              )),
                        ],
                      ),
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          label: Text(
                            'Delete',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
