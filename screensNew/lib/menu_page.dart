import 'package:screensNew/AddProduct..dart';
import 'package:screensNew/Login/Login.dart';
import 'package:screensNew/Ordering.dart';
import 'package:screensNew/ProductSearch.dart';
import 'package:screensNew/editstore.dart';
import 'package:screensNew/main.dart';
import 'package:screensNew/promotion.dart';
import 'package:screensNew/saletax.dart';
import 'package:screensNew/zoom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'YourWallet.dart';

class MenuScreen extends StatelessWidget {
  final List<MenuItem> options = [
    MenuItem(Image.asset('assets/dashboard.png'), 'Dashboard'),
    MenuItem(Image.asset('assets/profileicon.png'), 'Profile'),
    MenuItem(Image.asset('assets/editstore.png'), 'Edit Store'),
    MenuItem(Image.asset('assets/orders.png'), 'Order\'s'),
    MenuItem(Image.asset('assets/wallet.png'), 'My Wallet'),
    MenuItem(Image.asset('assets/product.png'), 'Products'),
    MenuItem(Image.asset('assets/promotion.png'), 'Promotion'),
    MenuItem(Image.asset('assets/orders.png'), 'Sale tax Report'),
    MenuItem(Image.asset('assets/logout.png'), 'Logout'),
  ];
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);
  static const color3 = const Color(0xff92278F);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        //on swiping left
        if (details.delta.dx < -6) {
          Provider.of<MenuController>(context, listen: true).toggle();
        }
      },
      child: Container(
        padding: EdgeInsets.only(
            top: 62,
            left: 32,
            bottom: 8,
            right: MediaQuery.of(context).size.width / 2.9),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [color1, color3],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        )),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 40,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => AddProduct()));
                        },
                        child: Text(
                          'Add Product',
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.white)),
                      ),
                    )
                  ],
                ),
                //Spacer(),

                Column(
                  children: options.map((item) {
                    return ListTile(
                      leading: Container(
                        height: 20,
                        width: 20,
                        color: Colors.transparent,
                        child: item.icon,
                      ),
                      onTap: () {
                        print(item.title);
                        if (item.title == 'Dashboard') {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                        } else if (item.title == 'Profile') {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                        } else if (item.title == 'Edit Store') {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => EditStore()));
                        } else if (item.title == 'Order\'s') {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => OrdersTab()));
                        } else if (item.title == 'Products') {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => ProductSearch()));
                        } else if (item.title == 'Promotion') {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => PromotionPage()));
                        } else if (item.title == 'Sale tax Report') {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => SaleTaxReportPage()));
                        } else if (item.title == 'My Wallet') {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => YourWalletPage()));
                        } else if (item.title == 'Logout') {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        }
                      },
                      title: Text(
                        item.title,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontFamily: 'bradley'),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuItem {
  String title;
  Image icon;

  MenuItem(this.icon, this.title);
}
