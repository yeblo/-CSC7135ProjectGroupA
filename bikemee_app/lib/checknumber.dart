import 'dart:convert';
import 'package:flutter/cupertino.dart';
import "package:http/http.dart" as http;
import 'package:bikemee_app/Api.dart';
import 'package:bikemee_app/ResponseDB.dart';

class CheckNumber{
  final String num;


  CheckNumber({
    @required this.num

  });

  Future <String> register() async{
    try{
      final response = await http.post(Api.checkNumber_API,
          body:{
            "phone": num,
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
