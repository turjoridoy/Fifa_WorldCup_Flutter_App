import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/dummyData.dart';
import '../model/ordershistory.dart';
import '../styles/colors.dart';
import '../styles/text_constants.dart';

class PredictionView extends StatefulWidget {
  const PredictionView({Key key}) : super(key: key);

  @override
  _PredictionViewState createState() => _PredictionViewState();
}


class _PredictionViewState extends State<PredictionView> {

  List<OrdersHistory> orderHistoryList = new List<OrdersHistory>();

  @override
  void initState() {

    orderHistoryList = getOrderHistory();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                TConstants.predictions,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            body: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Text(
                        "Next Match Predictions",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: MyColors.black),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
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
                        child:  Container(
                          margin: EdgeInsets.only(left: 15,right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Saturday, 16/10/2020",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.black),
                              ),
                              Text(
                                "15:30",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.black),
                              ),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset("images/flag1.png",width: 80,height: 40,),
                                      SizedBox(height: 4,),
                                      Text(
                                        'Argentina',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Image.asset("images/flag2.png",width: 80,height: 40,),
                                      SizedBox(height: 4,),
                                      Text(
                                        'Brazil',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(height: 10,),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "Previous Match Predictions",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: MyColors.black),
                      ),
                      for(int i=0; i<5; i++)
                        Container(
                        margin: EdgeInsets.only(top: 10),
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
                        child:  ListTile(
                          leading: Column(
                            children: [
                              Image.asset("images/flag1.png",width: 50,height: 30,),
                              SizedBox(height: 4,),
                              Text(
                                'Argentina',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                          title: CircleAvatar(
                            maxRadius: 16,
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.done,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Container(
                            margin: EdgeInsets.only(top: 7),
                            child: Text(
                              'WON',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0),
                            ),
                          ),
                          trailing: Column(
                            children: [
                              Image.asset("images/flag2.png",width: 50,height: 30,),
                              SizedBox(height: 4,),
                              Text(
                                'Brazil',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ))));
  }
}
