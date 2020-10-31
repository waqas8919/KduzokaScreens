import 'package:screensNew/GeoLocation/PinMapsScreen.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class OrdersTab extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<OrdersTab>
    with SingleTickerProviderStateMixin {
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  TabController _tabController;
  final List<Tab> tabs = [
    Tab(
      ///Give  keys so you can make it easier to retrieve content to display, if you have to read the data from a remote resource ...
      key: ObjectKey(1),
      text: 'Active',
    ),
    Tab(
      key: ObjectKey(2),
      text: 'Pending',
    ),
    Tab(
      key: ObjectKey(3),
      text: 'History',
    ),
  ];

  ///Build the widget for each tab ...
  Widget _setDisplayContainer(key) {
    if (key == ObjectKey(1)) {
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
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
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
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                            Text(
                              ' 56\$',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 22),
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
      );
    } else if (key == ObjectKey(2)) {
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
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
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
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                            Text(
                              ' 56\$',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 22),
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
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
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
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GradientAppBar(
          title: Text('Order\'s'),
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
                child: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => DetailsOrdersTab()));
                    })),
          ],
        ),
        body: Scaffold(
          appBar: TabBar(
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
}
