import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

class ButtonOrder extends StatelessWidget {
  String title;
  ButtonOrder(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-100,
      height: 45,
      child: Ink(
        decoration: BoxDecoration(
          border: Border.all(color: MyColors.primaryColor,width: 2),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(fontSize: 16,color: MyColors.primaryColor,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}