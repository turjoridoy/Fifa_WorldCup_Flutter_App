import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/User.dart';
import '../styles/colors.dart';
import '../styles/text_constants.dart';

class Stadiums extends StatefulWidget {
  @override
  _StadiumsState createState() => _StadiumsState();
}

class _StadiumsState extends State<Stadiums> {


  List<String> stadiums = [
    "Al Janoub Stadium",
    "Lusail Stadium",
    "Al Bayt Stadium",
    "Ahmad Bin Ali Stadium",
    "Khalifa International Stadium",
    // "Education City Stadium",
    // "Stadium 974",
    // "Al Thumama Stadium ",
  ];

  @override
  void initState() {
    setState(() {

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                TConstants.stadiums,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            body: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height*2,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      SizedBox(
                        height: 5,
                      ),
                      for(int i=0;i<stadiums.length; i++)

                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(bottom: 4),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                            color: MyColors.grey,),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  "images/stadium${i}.jpeg",
                                  fit: BoxFit.cover, // x2 (twice) the radius of CircleAvatar
                                  height: 200,
                                  color: Colors.black.withOpacity(0.5),
                                  colorBlendMode: BlendMode.softLight,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: ListTile(
                                  title: Text(
                                    stadiums[i],
                                    style: TextStyle(
                                      fontFamily: 'QatarBold',
                                        fontSize: 20,
                                        color: MyColors.white),
                                  ),
                                  subtitle: Text(
                                    "Al W211```````1akrah",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: MyColors.white),
                                  ),

                                ),
                              )
                            ],
                          ),
                        ),

                      SizedBox(
                        height: 10,
                      ),


                    ],
                  ),
                )
            )
        )
    );
  }


}