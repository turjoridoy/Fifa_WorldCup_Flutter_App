import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qatar_wc/styles/text_constants.dart';
import 'package:qatar_wc/views/singleMatchView.dart';

import '../styles/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  bool notification = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            TConstants.title,
            style: TextStyle(fontSize: 20,fontFamily: 'QatarBold', color: MyColors.backgroundColor, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Container(
                margin: EdgeInsets.only(left: 10,top: 5,bottom: 0),
                child: Text(
                  'News',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                  height: 200.0,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: MyColors.backgroundColor
                    ),
                    child: Carousel(
                      borderRadius: true,
                      dotBgColor: Colors.transparent,
                      images: [
                        ExactAssetImage("images/banner.jpg"),
                        ExactAssetImage("images/banner.jpg"),
                        ExactAssetImage("images/banner.jpg"),
                      ],
                    ),
                  )
              ),

              Container(
                margin: EdgeInsets.only(left: 10,top: 5,bottom: 5),
                child: Text(
                  'Live Matches',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                height: 150,margin: EdgeInsets.only(left: 7,bottom: 5),

                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int i) =>
                      Container(
                        child: Card(
                          elevation: 8,
                          shadowColor: Colors.grey,
                          child: Container(
                            width: 250.0,
                            color: MyColors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text('FIFA WORLD CUP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                Text('Match 10',style: TextStyle(color: Colors.white),),
                                Container(
                                    child: ListTile(
                                      leading: Column(
                                        children: [
                                          Image.asset("images/flag1.png",width: 50,height: 30,),
                                          SizedBox(height: 4,),
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
                                        "2 : 0",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0),
                                      ),
                                      subtitle: Text(
                                        'End',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0),
                                      ),
                                      trailing: Column(
                                        children: [
                                          Image.asset("images/flag2.png",width: 50,height: 30,),
                                          SizedBox(height: 4,),
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
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                )
              ),

              Container(
                margin: EdgeInsets.only(left: 10,top: 5,bottom: 5),
                child: Text(
                  'Upcoming Matches',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
              ),

              for(int i=0; i<10; i++)
                Container(
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => SingleMatchView("Group D - Match day 1 of 3")));
                      },
                      child: itemCard('Group D - Match day 1 of 3')
                  ),
                ),




            ],
          ),
        )
    );
  }



  Widget itemCard(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child:  Column(
            children: <Widget>[
              SizedBox(height: 2,),
              Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0),
              ),
              SizedBox(height: 2,),
              Container(
                  child: ListTile(
                    leading: Column(
                      children: [
                        Image.asset("images/flag1.png",width: 40,height: 25,),
                        SizedBox(height: 4,),
                        Text(
                          'Argentina',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        ),
                      ],
                    ),
                    title: Text(
                      "12/10/2022",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                    subtitle: Text(
                      '18:04',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0),
                    ),
                    trailing: Column(
                      children: [
                        Image.asset("images/flag2.png",width: 40,height: 25,),
                        SizedBox(height: 4,),
                        Text(
                          'Brazil',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        ),
                      ],
                    ),
                  )
              ),

            ],
          )
      ),
    );
  }


}
