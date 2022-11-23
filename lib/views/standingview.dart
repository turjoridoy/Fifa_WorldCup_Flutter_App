import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qatar_wc/styles/text_constants.dart';

import '../model/Cart.dart';
import '../styles/colors.dart';

class StandingView extends StatefulWidget {
  const StandingView({Key key}) : super(key: key);

  @override
  _StandingViewState createState() => _StandingViewState();
}

class _StandingViewState extends State<StandingView> {
  int _itemCount = 0;
  List<MyCart> cartList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          TConstants.standings,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 1500,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text(
                  "Group A",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 14),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: DataTable(
                    horizontalMargin: 0,
                    columnSpacing: 20,
                    columns: [
                      DataColumn(
                          label: Text(
                          'Team',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'P',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'G',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Gs',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Gd',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Pts',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Group B",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 14),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: DataTable(
                    horizontalMargin: 0,
                    columnSpacing: 20,
                    columns: [
                      DataColumn(
                          label: Text(
                              'Team',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                          )),
                      DataColumn(label: Text(
                          'P',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'G',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Gs',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Gd',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Pts',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Group C",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 14),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: DataTable(
                    horizontalMargin: 0,
                    columnSpacing: 20,
                    columns: [
                      DataColumn(
                          label: Text(
                              'Team',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                          )),
                      DataColumn(label: Text(
                          'P',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'G',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Gs',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Gd',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Pts',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Group D",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 14),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: DataTable(
                    horizontalMargin: 0,
                    columnSpacing: 20,
                    columns: [
                      DataColumn(
                          label: Text(
                              'Team',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                          )),
                      DataColumn(label: Text(
                          'P',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'G',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Gs',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Gd',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Pts',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                      DataRow(cells: [
                        DataCell(ListTile(leading: Image.asset("images/flag1.png",width: 30,),title: Text('Russia'),)),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('2')),
                      ]),
                    ],
                  ),
                )
              ]
          ),
        ),
      ),
    ));
  }
}
