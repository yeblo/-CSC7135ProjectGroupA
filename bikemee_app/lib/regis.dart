import 'dart:convert';
import 'package:flutter/cupertino.dart';
import "package:http/http.dart" as http;
import 'package:bikemee_app/Api.dart';
import 'package:bikemee_app/ResponseDB.dart';

class RegisterDB{
  final String fname;
  final String lname;
  final String pass;
  final String email;
  final String phone;

  RegisterDB({
    @required this.fname,
    @required this.lname,
    @required this.email,
    @required this.pass,
    @required this.phone
  });

  Future <String> register() async{
    try{
      final response = await http.post(Api.signup_API,
          body:{
            "email": email,
            "fname" : fname,
            "lname": lname,
            "password": pass,
            "phone": phone
          });

      if(response.statusCode == ResponseDB.successCode)
      {
        final result = json.decode(response.body);

        return result;
      }else{
        return ResponseDB.error;  //you can change to error
      }
    }catch (e){
      return 'Error';
    }


  }}
