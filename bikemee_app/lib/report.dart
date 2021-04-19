import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Api.dart';
import 'constants.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {

  TextEditingController email = new TextEditingController();
  TextEditingController subject = new TextEditingController();
  TextEditingController report = new TextEditingController();
  final GlobalKey<FormState> _fkey = GlobalKey<FormState>();

  Future _report() async {
    try{
      var response = await http.post(Api.report_problem_API, body: {
        "email": email.text,
        "subject": subject.text,
        "report": report.text
      });
      var data = json.decode(response.body);
      if (data == "Message received") {
        Fluttertoast.showToast(
              msg: data,//message received
              textColor: Colors.black,
              backgroundColor: Colors.transparent,
              toastLength: Toast.LENGTH_SHORT,
              fontSize: 16);
        //  setState(() {
        //   email.text = null;
        //   subject = "" as TextEditingController;
        //   report = "" as TextEditingController;
        // });
      } else {
         Fluttertoast.showToast(
            msg: data, //message not received
            textColor: Colors.black,
            backgroundColor: Colors.transparent,
            toastLength: Toast.LENGTH_SHORT,
            fontSize: 16
        );
        print(data);
        // FlutterToast(context).showToast(
        //     child: Text('Username and password invalid',
        //         style: TextStyle(fontSize: 25, color: Colors.red)));
      }}catch (e){
      return 'Error';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report a Problem",
        style: TextStyle(
          color: Colors.white
        )
        ),
      ),
      body: SingleChildScrollView(
      child:Form(
        key: _fkey,
        child: Column(
          children: <Widget> [
            SizedBox(
              height: 30.0
            ),
            Padding(
                padding: EdgeInsets.only(left:20.0, right: 20.0),
                child: TextFormField(
                   controller: email,
                  //obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(

                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            color: kPrimaryColor,
                            width: 1.5
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color:Colors.grey),
                      )
                  ),
                  validator: (String value){
                    if(value.isEmpty){
                      return 'This field cannot be empty';
                    }
                    return null;
                  },
                )
            ),

            SizedBox(
                height: 10.0
            ),
            Padding(
                padding: EdgeInsets.only(left:20.0, right: 20.0),
                child: TextFormField(
                   controller: subject,
                  // obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Subject ',
                      hintStyle: TextStyle(

                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            color: kPrimaryColor,
                            width: 1.5
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color:Colors.grey),
                      )
                  ),
                  validator: (String value){
                    if(value.isEmpty){
                      return 'This field cannot be empty';
                    }
                    return null;
                  },
                )
            ),
            SizedBox(
                height: 10.0
            ),


            Padding(
                padding: EdgeInsets.only(left:20.0, right: 20.0),
                child: TextFormField(
                   controller: report,
                  maxLines: 5,
                 //obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Report Problem',
                      hintStyle: TextStyle(

                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            color: kPrimaryColor,
                            width: 1.5
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color:Colors.grey),
                      )
                  ),
                  validator: (String value){
                    if(value.isEmpty){
                      return 'This field cannot be empty';
                    }
                    return null;
                  },
                )
            ),
            SizedBox(
            height: 10.0,
            ),
            ButtonTheme(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    //  side: BorderSide(color: Colors.red)
                  ),
                  padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                  child: Text('submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),),
                  //Icon( Icons.arrow_forward, color: Colors.white,),
                  color: kPrimaryColor ,
                  onPressed: (){
                      _report();
                  },
                ),
            )
          ],
        ),
      ),
    )
    );
  }
}
