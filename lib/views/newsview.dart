import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qatar_wc/views/singleNewsView.dart';

import '../styles/colors.dart';
import '../styles/text_constants.dart';

class NewsView extends StatefulWidget {
  const NewsView({Key key}) : super(key: key);

  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            TConstants.news,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
          body: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Container(
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 60,top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, i) {
                          return InkWell(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => SingleNewsView()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(6),
                              margin: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                color: MyColors.white,
                                border: Border.all(width: 0.5,color: MyColors.grey3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 130,
                                    child:  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(20), // Image radius
                                        child: Image.asset(
                                          "images/banner.jpg",
                                          fit: BoxFit.cover,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text("Katara to host spectacular send-off event for FIFA World Cup Trophy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black),),
                                  SizedBox(height: 3,),
                                  Text("Katara will host a spectacular send-off event on Tuesday night. \nTuesday’s final event which will be open to the public will include a memorable stage show and be attended by Brazilian football legend Cafu, twice a winner of the FIFA World Cup™.",style: TextStyle(fontSize: 12,color: MyColors.black,fontWeight: FontWeight.normal),),
                                  SizedBox(height: 5,),

                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )))
    );
  }
}
