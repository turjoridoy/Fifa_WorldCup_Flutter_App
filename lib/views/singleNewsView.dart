import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

class SingleNewsView extends StatefulWidget {
  @override
  _SingleNewsViewState createState() => _SingleNewsViewState();
}

class _SingleNewsViewState extends State<SingleNewsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset("images/banner.jpg", width: MediaQuery.of(context).size.width,),
                    Container(
                      margin: EdgeInsets.only(top: 30,left: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyColors.black.withOpacity(0.7),
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
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Katara to host spectacular send-off event for FIFA World Cup Trophy",
                        style: TextStyle(
                            fontSize: 18,
                            color: MyColors.primaryColor,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Katara will host a spectacular send-off event for the FIFA World Cup Trophy on Tuesday night. A host of activities have been organised across the country to mark the 200-day countdown to the tournament, which was reached during the Eid holiday. Tuesday’s final event – which will be open to the public – will include a memorable stage show and be attended by Brazilian football legend Cafu, twice a winner of the FIFA World Cup™. The Katara ceremony – which will get underway at 5 PM – is the culmination of a series of special events before the famous prize embarks on the FIFA World Cup™ Trophy Tour by Coca-Cola, which will return to Doha ahead of the opening match of Qatar 2022 at Al Bayt Stadium on 21 November. Since 5 May, the trophy has visited a host of locations across Qatar, including Aspire Park, Lusail Marina and Msheireb Downtown Doha. It has also appeared at a number of businesses and organisations, as well as being hosted at Mohammed Bin Jassim House. Thousands of fans have engaged with the trophy as excitement continues to build ahead of the 22nd edition of the FIFA World Cup™.", textAlign:TextAlign.justify,style: TextStyle(fontSize: 12,)),
                      SizedBox(height: 20,),


                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
