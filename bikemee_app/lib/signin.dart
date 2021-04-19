import 'dart:convert';
import 'package:flutter/cupertino.dart';
import "package:http/http.dart" as http;
import 'package:bikemee_app/Api.dart';
import 'package:bikemee_app/ResponseDB.dart';

class Signin{
  final String email;
  final String pwd;


  Signin({
    @required this.email,
    @required this.pwd
  });

  Future <String> register() async{
    try{
      final response = await http.post(Api.login_API,
          body:{
            "email": email,
            "password": pwd
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
