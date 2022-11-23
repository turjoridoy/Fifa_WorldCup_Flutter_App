import 'dart:async';
import 'dart:convert';
import 'package:qatar_wc/utils/shared_preference.dart';
import 'package:qatar_wc/utils/uri.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:qatar_wc/utils/uri.dart';

import '../model/User.dart';
import '../model/ordershistory.dart';


Future<List<Users>> login(phone, pass) async {
  String url ='$baseUrl/v0/user/?phone=${phone}&password=${pass}';
  final responseBody = (await http.get(Uri.parse(url)));
  print(responseBody.body);
  if(Users.fromJsonList(jsonDecode(responseBody.body)).length == 0){
    print("Login failed");
    Fluttertoast.showToast(
        msg: "Phone or Password went wrong",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
    return [];
  }else{
    saveUser(json.encode(Users.fromJsonList(jsonDecode(responseBody.body)).first.toJson()));
    return  Users.fromJsonList(jsonDecode(responseBody.body));
  }

}

Future<List<Users>> accCheck(phone) async {
  String url ='$baseUrl/v0/user/?phone=${phone}';
  final responseBody = (await http.get(Uri.parse(url)));
  if(Users.fromJsonList(jsonDecode(responseBody.body)).length == 0){
    print("Login failed");
    Fluttertoast.showToast(
        msg: "Phone or Password went wrong",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
    return [];
  }else{
    saveUser(json.encode(Users.fromJsonList(jsonDecode(responseBody.body)).first.toJson()));
    return  Users.fromJsonList(jsonDecode(responseBody.body));
  }

}


Future<int> userCreate(data) async {

  print(data);

  final responseBody = (await http.post(Uri.parse('$baseUrl/v0/user/'),
      body: json.encode(data), headers: {'Content-Type': 'application/json'}));

  print(data);
  print(responseBody.body);

  if (responseBody.statusCode == 201) {
    print("Successfully created user");
  }else {
    print("Failed to submit ${responseBody.statusCode}");
  }
  return responseBody.statusCode;

}



Future<int> profileUpdate(data,id) async {

  final responseBody = (await http.patch(Uri.parse('$baseUrl/v0/user/${id}/'),
      body: json.encode(data), headers: {'Content-Type': 'application/json'}));
  saveUser(responseBody.body);
  print(responseBody.body);

  if (responseBody.statusCode == 200) {
    print("Successfully updated");
  }else {
    print("Failed to submit ${responseBody.statusCode}");
  }
  return responseBody.statusCode;

}



