import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qatar_wc/views/scheduleView.dart';
import 'package:qatar_wc/views/stadiums.dart';

import '../model/User.dart';
import '../styles/colors.dart';
import '../styles/text_constants.dart';

class MoreView extends StatefulWidget {
  const MoreView({Key key}) : super(key: key);

  @override
  _MoreViewState createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            TConstants.title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Image.asset('images/worldcup.png', height: 160,),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10,top: 20),
                margin: EdgeInsets.only(bottom: 3),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Stadiums()));
                  },
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      leading: Icon(Icons.stadium,color: MyColors.grey3,),
                      title: Text("Stadiums"),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                margin: EdgeInsets.only(bottom: 3),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ScheduleView()));
                  },
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      leading: Icon(Icons.stadium,color: MyColors.grey3,),
                      title: Text("Matches"),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10,),
                margin: EdgeInsets.only(bottom: 3),
                child: InkWell(
                  onTap: (){

                  },
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      leading: Icon(Icons.notes,color: MyColors.grey3,),
                      title: Text("Terms & Conditions"),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                margin: EdgeInsets.only(bottom: 3),
                child: InkWell(
                  onTap: (){

                  },
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      leading: Icon(Icons.share,color: MyColors.grey3,),
                      title: Text("Share Now"),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                margin: EdgeInsets.only(bottom: 3),
                child: InkWell(
                  onTap: (){

                  },
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      leading: Icon(Icons.details,color: MyColors.grey3,),
                      title: Text("About"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
