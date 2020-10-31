// import 'package:flutter/material.dart';
// import 'package:gradient_app_bar/gradient_app_bar.dart';

// class DetailsOrdersTab extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<DetailsOrdersTab>
//     with SingleTickerProviderStateMixin {
//   static const color1 = const Color(0xff25AAE1);
//   static const color2 = const Color(0xff596CBA);
//   TabController _tabController;
//   final List<Tab> tabs = [
//     Tab(
//       ///Give  keys so you can make it easier to retrieve content to display, if you have to read the data from a remote resource ...
//       key: ObjectKey(1),
//       text: 'Order Detail',
//     ),
//     Tab(
//       key: ObjectKey(2),
//       text: 'Order Status',
//     ),
//     Tab(
//       key: ObjectKey(3),
//       text: 'Products',
//     ),
//     Tab(
//       key: ObjectKey(4),
//       text: 'Payment',
//     ),
//     Tab(
//       key: ObjectKey(5),
//       text: 'Invoice',
//     ),
//   ];

//   ///Build the widget for each tab ...
//   Widget _setDisplayContainer(key) {
//     if (key == ObjectKey(1)) {
//       return Scaffold(
//         body: Column(
//           children: [
//             SizedBox(
//               height: 15,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Text('Order No.', style: TextStyle(fontSize: 18))
//                     ],
//                   ),
//                   Row(
//                     children: [Text('Status', style: TextStyle(fontSize: 18))],
//                   ),
//                   Row(
//                     children: [
//                       Text('Order Date', style: TextStyle(fontSize: 18))
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Text('154236',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold))
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text('Completed',
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.green))
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text('29/06/20',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold))
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Divider(
//                 height: 20,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Text('Customer Name',
//                           style: TextStyle(fontSize: 18, color: Colors.grey))
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text('Customer Number',
//                           style: TextStyle(fontSize: 18, color: Colors.grey))
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Text('My. Kamal',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold))
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text('0900-78601',
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ))
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Text('Customer Email',
//                           style: TextStyle(fontSize: 18, color: Colors.grey))
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Text('Kamal@gmail.com',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold))
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Divider(
//                 height: 10,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Text('Shipping Address',
//                           style: TextStyle(fontSize: 18, color: Colors.grey))
//                     ],
//                   ),
//                   // Row(
//                   //   children: [
//                   //     Text('Customer Number',
//                   //         style: TextStyle(fontSize: 18, color: Colors.grey))
//                   //   ],
//                   // ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Text('Dhoraji Bhadurabad',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold))
//                     ],
//                   ),
//                   Row(
//                     children: [Icon(Icons.keyboard_arrow_down)],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         bottomNavigationBar: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: 50,
//             child: FlatButton(
//               color: Colors.blue,
//               textColor: Colors.white,
//               padding: EdgeInsets.all(8.0),
//               splashColor: Colors.blueAccent,
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     new MaterialPageRoute(
//                         builder: (context) => DetailsOrdersTab()));
//               },
//               child: Text(
//                 "Next",
//                 style: TextStyle(fontSize: 20.0),
//               ),
//             ),
//           ),
//         ),
//       );
//     } else if (key == ObjectKey(2)) {
//       return Scaffold(
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search Product",
//                   hintStyle: TextStyle(color: Colors.grey),
//                   prefixIcon: IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.search,
//                       color: Colors.blue[200],
//                       size: 30,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Text(
//                     'Total Products  01 ',
//                     style: TextStyle(fontSize: 16, color: Colors.grey),
//                   ),
//                 ),
//                 Text(
//                   '_________________',
//                   style: TextStyle(fontSize: 15, color: Colors.grey),
//                 )
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 150,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.grey,
//                     ),
//                     borderRadius: BorderRadius.all(Radius.circular(5))),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 15.0, top: 15),
//                           child: Text(
//                             'Order No:',
//                             style: TextStyle(fontSize: 20, color: Colors.grey),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 38.0, top: 15),
//                           child: Text('Status',
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.grey)),
//                         )
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 15.0),
//                           child: Text('1543268',
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.black)),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 15.0),
//                           child: Text('Complete',
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.green)),
//                         )
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Divider(
//                         height: 20,
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 15.0),
//                               child: Text(
//                                 'Total Amount:',
//                                 style: TextStyle(
//                                     fontSize: 20, color: Colors.black),
//                               ),
//                             ),
//                             Text(
//                               ' 56\$',
//                               style:
//                                   TextStyle(color: Colors.blue, fontSize: 22),
//                             )
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 15.0),
//                           child: Text(
//                             'Get Details',
//                             style: TextStyle(
//                               fontSize: 17,
//                               fontWeight: FontWeight.w500,
//                               decoration: TextDecoration.underline,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//         bottomNavigationBar: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: 50,
//             child: FlatButton(
//               color: Colors.blue,
//               textColor: Colors.white,
//               padding: EdgeInsets.all(8.0),
//               splashColor: Colors.blueAccent,
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     new MaterialPageRoute(
//                         builder: (context) => DetailsOrdersTab()));
//               },
//               child: Text(
//                 "Next",
//                 style: TextStyle(fontSize: 20.0),
//               ),
//             ),
//           ),
//         ),
//       );
//     }

//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: "Search Product",
//                 hintStyle: TextStyle(color: Colors.grey),
//                 prefixIcon: IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.search,
//                     color: Colors.blue[200],
//                     size: 30,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(
//                   'Total Products  01 ',
//                   style: TextStyle(fontSize: 16, color: Colors.grey),
//                 ),
//               ),
//               Text(
//                 '_________________',
//                 style: TextStyle(fontSize: 15, color: Colors.grey),
//               )
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Container(
//               height: 150,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.grey,
//                   ),
//                   borderRadius: BorderRadius.all(Radius.circular(5))),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 15.0, top: 15),
//                         child: Text(
//                           'Order No:',
//                           style: TextStyle(fontSize: 20, color: Colors.grey),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 38.0, top: 15),
//                         child: Text('Status',
//                             style: TextStyle(fontSize: 20, color: Colors.grey)),
//                       )
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 15.0),
//                         child: Text('1543268',
//                             style:
//                                 TextStyle(fontSize: 20, color: Colors.black)),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 15.0),
//                         child: Text('Complete',
//                             style:
//                                 TextStyle(fontSize: 20, color: Colors.green)),
//                       )
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Divider(
//                       height: 20,
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 15.0),
//                             child: Text(
//                               'Total Amount:',
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.black),
//                             ),
//                           ),
//                           Text(
//                             ' 56\$',
//                             style: TextStyle(color: Colors.blue, fontSize: 22),
//                           )
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 15.0),
//                         child: Text(
//                           'Get Details',
//                           style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.w500,
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: 50,
//           child: FlatButton(
//             color: Colors.blue,
//             textColor: Colors.white,
//             padding: EdgeInsets.all(8.0),
//             splashColor: Colors.blueAccent,
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   new MaterialPageRoute(
//                       builder: (context) => DetailsOrdersTab()));
//             },
//             child: Text(
//               "Next",
//               style: TextStyle(fontSize: 20.0),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(vsync: this, length: tabs.length);
//   }

//   @override
//   Widget build(BuildContext context) {
  
//     return Scaffold(
//         appBar: GradientAppBar(
//             title: Text('Order\'s Details'),
//             centerTitle: true,
//             backgroundColorStart: color2,
//             backgroundColorEnd: color1,
//             leading: IconButton(
//               color: Colors.white,
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: Icon(
//                 Icons.arrow_back,
//               ),
//             )),
//         body: Scaffold(
//           appBar: TabBar(
//             isScrollable: true,
//             unselectedLabelColor: const Color(0xffacb3bf),
//             indicatorColor: Colors.blue,
//             labelColor: Colors.black,
//             indicatorSize: TabBarIndicatorSize.tab,
//             indicatorWeight: 1.0,
//             indicatorPadding: EdgeInsets.all(10),
//             tabs: tabs,
//             controller: _tabController,
//             labelStyle: TextStyle(color: Colors.orangeAccent, fontSize: 18),
//             onTap: (index) {},
//           ),
//           body: TabBarView(
//               controller: _tabController,
//               children:
//                   tabs.map((tab) => _setDisplayContainer(tab.key)).toList()),
//         ));
  
//   }
// }
