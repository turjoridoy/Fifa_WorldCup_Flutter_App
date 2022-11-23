import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../styles/colors.dart';

class SingleMatchView extends StatefulWidget {
  String title;

  SingleMatchView(this.title);

  @override
  _SingleMatchViewState createState() => _SingleMatchViewState();
}

class _SingleMatchViewState extends State<SingleMatchView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Stack(
                children: [
                  Opacity(
                    opacity: 0.9,
                    child: Container(
                      color: MyColors.blue,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            colorFilter: new ColorFilter.mode(
                                Colors.blue.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: AssetImage("images/stadium2.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        title: Text(
                                          "Group B - Group Stage Match",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.0),
                                        ),
                                        subtitle: Text(
                                          "Al Bayt Stadium, QATAR",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          child: ListTile(
                                        leading: Column(
                                          children: [
                                            Image.asset(
                                              "images/flag1.png",
                                              width: 50,
                                              height: 30,
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              'Argentina',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12.0),
                                            ),
                                          ],
                                        ),
                                        title: Text(
                                          "0 : 2",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0),
                                        ),
                                        subtitle: Text(
                                          'Nov 14, 2022 | FT',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                        ),
                                        trailing: Column(
                                          children: [
                                            Image.asset(
                                              "images/flag2.png",
                                              width: 50,
                                              height: 30,
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              'Brazil',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12.0),
                                            ),
                                          ],
                                        ),
                                      )),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyColors.white.withOpacity(0.2),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_sharp,
                            color: MyColors.white,
                          )),
                    ),
                  ),
                ],
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 150.0),
                child: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        "Details",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Stats",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Lineups",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("7'",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(color: Colors.green))),
                                Container(
                                  margin: EdgeInsets.only(top: 0,right: 10,left: 10),
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1.5, color: Colors.green)),
                                  child: Icon(
                                    Icons.sports_soccer,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("Goal",
                                        style: TextStyle(color: Colors.black))),
                              ],
                            ),
                            Dash(
                                direction: Axis.vertical,
                                length: 30,
                                dashLength: 30,
                                dashColor: Colors.green),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            30,
                                    child: Text("20'",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(color: Colors.green))),
                                Container(
                                  margin: EdgeInsets.only(top: 0,right: 10,left: 10),
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1.5, color: Colors.green)),
                                  child: Icon(
                                    Icons.sports_soccer,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            30,
                                    child: Text("Red Card",
                                        style: TextStyle(color: Colors.black))),
                              ],
                            ),

                            Dash(
                                direction: Axis.vertical,
                                length: 30,
                                dashLength: 30,
                                dashColor: Colors.green),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("35'",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(color: Colors.green))),
                                Container(
                                  margin: EdgeInsets.only(top: 0,right: 10,left: 10),
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1.5, color: Colors.green)),
                                  child: Icon(
                                    Icons.sports_soccer,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("Corner",
                                        style: TextStyle(color: Colors.black))),
                              ],
                            ),


                            Dash(
                                direction: Axis.vertical,
                                length: 30,
                                dashLength: 30,
                                dashColor: Colors.green),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("30'",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(color: Colors.green))),
                                Container(
                                  margin: EdgeInsets.only(top: 0,right: 10,left: 10),
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1.5, color: Colors.green)),
                                  child: Icon(
                                    Icons.sports_soccer,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("Goal",
                                        style: TextStyle(color: Colors.black))),
                              ],
                            ),

                            Dash(
                                direction: Axis.vertical,
                                length: 30,
                                dashLength: 30,
                                dashColor: Colors.green),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("32'",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(color: Colors.green))),
                                Container(
                                  margin: EdgeInsets.only(top: 0,right: 10,left: 10),
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1.5, color: Colors.green)),
                                  child: Icon(
                                    Icons.sports_soccer,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("Player Change",
                                        style: TextStyle(color: Colors.black))),
                              ],
                            ),

                            Dash(
                                direction: Axis.vertical,
                                length: 30,
                                dashLength: 30,
                                dashColor: Colors.green),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("Injury",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(color: Colors.green))),
                                Container(
                                  margin: EdgeInsets.only(top: 0,right: 10,left: 10),
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1.5, color: Colors.green)),
                                  child: Icon(
                                    Icons.sports_soccer,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("75'",
                                        style: TextStyle(color: Colors.black))),
                              ],
                            ),
                            Dash(
                                direction: Axis.vertical,
                                length: 30,
                                dashLength: 30,
                                dashColor: Colors.green),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("Corner",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(color: Colors.green))),
                                Container(
                                  margin: EdgeInsets.only(top: 0,right: 10,left: 10),
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1.5, color: Colors.green)),
                                  child: Icon(
                                    Icons.sports_soccer,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("78'",
                                        style: TextStyle(color: Colors.black))),
                              ],
                            ),
                            Dash(
                                direction: Axis.vertical,
                                length: 30,
                                dashLength: 30,
                                dashColor: Colors.green),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("Corner",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(color: Colors.green))),
                                Container(
                                  margin: EdgeInsets.only(top: 0,right: 10,left: 10),
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1.5, color: Colors.green)),
                                  child: Icon(
                                    Icons.sports_soccer,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("89'",
                                        style: TextStyle(color: Colors.black))),
                              ],
                            ),
                            Dash(
                                direction: Axis.vertical,
                                length: 30,
                                dashLength: 30,
                                dashColor: Colors.green),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("Full Time",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(color: Colors.green))),
                                Container(
                                  margin: EdgeInsets.only(top: 0,right: 10,left: 10),
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1.5, color: Colors.green)),
                                  child: Icon(
                                    Icons.sports_soccer,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                    width:
                                    MediaQuery.of(context).size.width / 2 -
                                        30,
                                    child: Text("0 : 2",
                                        style: TextStyle(color: Colors.black))),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(height: 15,),
                            Text("Offside",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5,),
                            LinearPercentIndicator(
                              alignment: MainAxisAlignment.center,
                              width: MediaQuery.of(context).size.width -60,
                              animation: true,
                              animationDuration: 1000,
                              lineHeight:30.0,
                              backgroundColor: Colors.green,
                              barRadius: Radius.circular(50),
                              // leading: new Text("left content"),
                              // trailing: new Text("right content"),
                              percent: 0.2,
                              center: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(margin:EdgeInsets.only(left: 10),child: Text("20.0%",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,color: MyColors.black),)),
                                  Spacer(),
                                  Container(margin:EdgeInsets.only(right: 10),child: Text("80.0%",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,color: MyColors.white),))
                                ],
                              ),
                              linearStrokeCap: LinearStrokeCap.butt,
                              progressColor: Colors.red,
                            ),
                            SizedBox(height: 15,),
                            Text("Shots",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5,),
                            LinearPercentIndicator(
                              alignment: MainAxisAlignment.center,
                              width: MediaQuery.of(context).size.width -60,
                              animation: true,
                              animationDuration: 1000,
                              lineHeight:30.0,
                              backgroundColor: Colors.grey,
                              barRadius: Radius.circular(50),
                              // leading: new Text("left content"),
                              // trailing: new Text("right content"),
                              percent: 0.3,
                              center: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(margin:EdgeInsets.only(left: 10),child: Text("10",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,color: MyColors.white),)),
                                  Spacer(),
                                  Container(margin:EdgeInsets.only(right: 10),child: Text("20",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black),))
                                ],
                              ),
                              linearStrokeCap: LinearStrokeCap.butt,
                              progressColor: Colors.indigo,
                            ),
                            SizedBox(height: 5,),
                            SizedBox(height: 15,),
                            Text("On Target",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                            LinearPercentIndicator(
                              alignment: MainAxisAlignment.center,
                              width: MediaQuery.of(context).size.width -60,
                              animation: true,
                              animationDuration: 1000,
                              lineHeight:30.0,
                              backgroundColor: Colors.grey,
                              barRadius: Radius.circular(50),
                              // leading: new Text("left content"),
                              // trailing: new Text("right content"),
                              percent: 0.3,
                              center: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(margin:EdgeInsets.only(left: 10),child: Text("10",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,color: MyColors.white),)),
                                  Spacer(),
                                  Container(margin:EdgeInsets.only(right: 10),child: Text("20",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black),))
                                ],
                              ),
                              linearStrokeCap: LinearStrokeCap.butt,
                              progressColor: Colors.indigo,
                            ),
                            SizedBox(height: 15,),
                            Text("Offside",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5,),

                            LinearPercentIndicator(
                              alignment: MainAxisAlignment.center,
                              width: MediaQuery.of(context).size.width -60,
                              animation: true,
                              animationDuration: 1000,
                              lineHeight:30.0,
                              backgroundColor: Colors.grey,
                              barRadius: Radius.circular(50),
                              // leading: new Text("left content"),
                              // trailing: new Text("right content"),
                              percent: 0.3,
                              center: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(margin:EdgeInsets.only(left: 10),child: Text("10",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,color: MyColors.white),)),
                                  Spacer(),
                                  Container(margin:EdgeInsets.only(right: 10),child: Text("20",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black),))
                                ],
                              ),
                              linearStrokeCap: LinearStrokeCap.butt,
                              progressColor: Colors.indigo,
                            ),
                            SizedBox(height: 15,),
                            Text("Cards",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5,),

                            LinearPercentIndicator(
                              alignment: MainAxisAlignment.center,
                              width: MediaQuery.of(context).size.width -60,
                              animation: true,
                              animationDuration: 1000,
                              lineHeight:30.0,
                              backgroundColor: Colors.grey,
                              barRadius: Radius.circular(50),
                              // leading: new Text("left content"),
                              // trailing: new Text("right content"),
                              percent: 0.3,
                              center: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(margin:EdgeInsets.only(left: 10),child: Text("10",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,color: MyColors.white),)),
                                  Spacer(),
                                  Container(margin:EdgeInsets.only(right: 10),child: Text("20",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black),))
                                ],
                              ),
                              linearStrokeCap: LinearStrokeCap.butt,
                              progressColor: Colors.indigo,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                          child: Column(

                        children: [
                          Image.asset(
                            "images/field.png",
                          ),
                          Container(
                            height: 400,
                            color: MyColors.fieldColor,
                          )
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
