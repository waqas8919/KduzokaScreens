import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:latlong/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:screensNew/promotion.dart';

import 'getLocation.dart';

class DetailsOrdersTab extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

MapController mapcontroller = MapController();

List<Marker> _markers = [];

class _MyHomePageState extends State<DetailsOrdersTab>
    with SingleTickerProviderStateMixin {
  TextEditingController textedit = new TextEditingController();
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position user;
  LatLng loc;
  var currentSelectedValue;
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  final deviceTypes = ["Status", "Status1", "Status2"];
  TabController _tabController;
  final List<Tab> tabs = [
    Tab(
      ///Give  keys so you can make it easier to retrieve content to display, if you have to read the data from a remote resource ...
      key: ObjectKey(1),
      text: 'Order Detail',
    ),
    Tab(
      key: ObjectKey(2),
      text: 'Order Status',
    ),
    Tab(
      key: ObjectKey(3),
      text: 'Products',
    ),
    Tab(
      key: ObjectKey(4),
      text: 'Payment',
    ),
    Tab(
      key: ObjectKey(5),
      text: 'Invoice',
    ),
  ];
  Widget _setDisplayContainer(key) {
    if (key == ObjectKey(1)) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Order No.', style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Status', style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Order Date', style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('154236',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Completed',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green))
                      ],
                    ),
                    Row(
                      children: [
                        Text('29/06/20',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Divider(
                  height: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Customer Name',
                            style: TextStyle(fontSize: 18, color: Colors.grey))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Customer Number',
                            style: TextStyle(fontSize: 18, color: Colors.grey))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('My. Kamal',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      children: [
                        Text('0900-78601',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Customer Email',
                            style: TextStyle(fontSize: 18, color: Colors.grey))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Kamal@gmail.com',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Divider(
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Shipping Address',
                            style: TextStyle(fontSize: 18, color: Colors.grey))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Dhoraji Bhadurabad',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      children: [Icon(Icons.keyboard_arrow_down)],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 150,
                  child: FlutterMap(
                    mapController: mapcontroller,
                    options: MapOptions(
                      minZoom: 16.0,
                      center: loc,
                    ),
                    layers: [
                      TileLayerOptions(
                        // for OpenStreetMaps:
                        urlTemplate:
                            'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                        subdomains: ['a', 'b', 'c'],
                      ),
                      MarkerLayerOptions(
                        markers: _markers,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Invoice Address',
                            style: TextStyle(fontSize: 18, color: Colors.grey))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Dhoraji Bhadurabad',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      children: [Icon(Icons.keyboard_arrow_down)],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 15,
              )
            ],
          ),
        ),
      );
    } else if (key == ObjectKey(2)) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Order No.', style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Status', style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Order Date', style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('154236',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Completed',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green))
                      ],
                    ),
                    Row(
                      children: [
                        Text('29/06/20',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 15,
              ),
              Container(
                height: 80,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Color(0xff92278F))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'On pre_Order (Not Paid)',
                          style:
                              TextStyle(color: Color(0xffBA68C8), fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Updated on : ',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        Text(
                          '25/09/2020',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Color(0xff2296F3))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Awaiting Checking Payment',
                          style:
                              TextStyle(color: Color(0xff2296F3), fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Updated on : ',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        Text(
                          '25/09/2020',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                child: Divider(
                  height: 20,
                  thickness: 1,
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
                            labelText: 'Status',
                            labelStyle: TextStyle(fontSize: 25),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              "Select Status",
                              style: TextStyle(color: Colors.grey),
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
                child: Divider(
                  height: 20,
                  thickness: 1,
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
                    onPressed: () {},
                    child: Text(
                      "Udate Satus",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Divider(
                  height: 20,
                  thickness: 1,
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
                            labelText: 'Assign Rider',
                            labelStyle: TextStyle(fontSize: 25),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              "Select Rider",
                              style: TextStyle(color: Colors.grey),
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
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {},
                    child: Text(
                      "Assign",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                child: Divider(
                  height: 20,
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 7),
                child: Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.grey,
                      size: 50,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.grey,
                      size: 50,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.grey,
                      size: 50,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.grey,
                      size: 50,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.grey,
                      size: 50,
                    )
                  ],
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
                      labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                      hintText: 'Write Somethings',
                      labelText: 'Review',
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
      );
    } else if (key == ObjectKey(3)) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Order No.', style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Status', style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Order Date', style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('154236',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Completed',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green))
                      ],
                    ),
                    Row(
                      children: [
                        Text('29/06/20',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Center(
                                child: Image.asset(
                              'assets/prince.jpg',
                              width: 90,
                              height: 140,
                            )),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Prince Biscuits',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'QTY : 02',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price : 200/-',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Center(
                                child: Image.asset(
                              'assets/prince.jpg',
                              width: 90,
                              height: 140,
                            )),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Prince Biscuits 24 packs',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'QTY : 01',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price : 500/-',
                            style: TextStyle(fontSize: 16),
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
      );
    } else if (key == ObjectKey(4)) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Order No.', style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Status', style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Order Date', style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('154236',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Completed',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green))
                      ],
                    ),
                    Row(
                      children: [
                        Text('29/06/20',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '\$ Payment',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transaction ID',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      '2a98ujhk76',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Divider(
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment Method',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      'Cash on delivery',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Divider(
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Amount',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      '550/-',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Divider(
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      '29/06/2020',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/bus.png',
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            ' Shipping',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tracking Code',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      'PJ786424',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Divider(
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rider',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      'Shabir',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Divider(
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Weight',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      '500gm',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Divider(
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Fees',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      '50/-',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Divider(
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      '10/Aug/2020',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Divider(
                  height: 10,
                ),
              ),
            ],
          ),
        ),
      );
    } else if (key == ObjectKey(5)) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Order No.', style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Status', style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Order Date', style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('154236',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Completed',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green))
                      ],
                    ),
                    Row(
                      children: [
                        Text('29/06/20',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '#',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Product Name',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Qty',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Price',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Lays Salted',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '01',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '90/-',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Prince Biscuits',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '02',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '40/-',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Divider(
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Sub Total',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '130/-',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Delivery Charges',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '90/-',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Sale Tax',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '20%',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Total',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '250/-',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
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
              height: 150,
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
                          'Order No:',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 38.0, top: 15),
                        child: Text('Status',
                            style: TextStyle(fontSize: 20, color: Colors.grey)),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text('1543268',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text('Complete',
                            style:
                                TextStyle(fontSize: 20, color: Colors.green)),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Divider(
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Total Amount:',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                          Text(
                            ' 56\$',
                            style: TextStyle(color: Colors.blue, fontSize: 22),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          'Get Details',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
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
                      builder: (context) => DetailsOrdersTab()));
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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    _getCurrentLocation();
    double lat = 0.0;
    double long = 0.0;

    getLocation().then((position) {
      user = position;
      setMarkers(user);
    });

    if (user == null) {
      lat = 31.7538406;
      long = 72.9207986;
    } else {
      lat = user.latitude;
      long = user.longitude;
    }

    loc = LatLng(lat, long);

    return Scaffold(
        appBar: GradientAppBar(
          title: Text('Order\'s Details'),
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
            IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => PromotionPage()));
                }),
          ],
        ),
        body: Scaffold(
          appBar: TabBar(
            isScrollable: true,
            unselectedLabelColor: const Color(0xffacb3bf),
            indicatorColor: Colors.blue,
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 1.0,
            indicatorPadding: EdgeInsets.all(10),
            tabs: tabs,
            controller: _tabController,
            labelStyle: TextStyle(color: Colors.orangeAccent, fontSize: 18),
            onTap: (index) {},
          ),
          body: TabBarView(
              controller: _tabController,
              children:
                  tabs.map((tab) => _setDisplayContainer(tab.key)).toList()),
        ));
  }

  void setMarkers(pos) {
    LatLng point = LatLng(pos.latitude, pos.longitude);

    List<Marker> markers = [
      Marker(
        width: 45.0,
        height: 45.0,
        point: point,
        builder: (context) => Container(
          child: IconButton(
            icon: Icon(Icons.location_on),
            color: Colors.blue,
            iconSize: 45.0,
            onPressed: () {},
          ),
        ),
      ),
    ];

    setState(() {
      _markers.clear();
      _markers = markers;
    });
  }

  _getCurrentLocation() {
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        user = position;
      });

      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      // List<Placemark> p = await geolocator.placemarkFromCoordinates(
      //     user.latitude, user.longitude);

      setState(() {});
    } catch (e) {
      print(e);
    }
  }
}
