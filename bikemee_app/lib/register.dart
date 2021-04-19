import 'dart:convert';
import 'package:bikemee_app/Api.dart';
import 'package:bikemee_app/mappage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bikemee_app/constants.dart';
import 'package:bikemee_app/regis.dart';
import 'package:fluttertoast/fluttertoast.dart';
import "package:http/http.dart" as http;

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  TextEditingController fname = new TextEditingController();
  TextEditingController lname = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  TextEditingController cpass = new TextEditingController();
  TextEditingController phone = new TextEditingController();


  Future signup() async {
    try{
    var response = await http.post(Api.signup_API, body: {
      "email": email.text,
      "fname" : fname.text,
      "lname": lname.text,
      "password": pass.text,
      "phone": phone.text
    });
    var data = json.decode(response.body);
    if (data == "Success") {
      // FlutterToast(context).showToast(
      //     child: Text(
      //       'Login Successful',
      //       style: TextStyle(fontSize: 25, color: Colors.green),
      //     ));
      Navigator.push(context, MaterialPageRoute(builder: (context)=>MapPage(),),);
    } else {
      Fluttertoast.showToast(
          msg: data,
          textColor: Colors.red,
          backgroundColor: Colors.grey,
          toastLength: Toast.LENGTH_LONG,
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

  

  final GlobalKey <FormState> _fkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //     title: Text("BikeMee")
      // ),
      body: SingleChildScrollView(
        child: Form(
        key: _fkey,
        child:Column(
          children: [
            SizedBox(height: 50.0,
            ),
            Center(
              child: Text("Register",
                  style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold
                  ) ),

            ),
            SizedBox(height: 40.0,
            ),
            Padding(
                padding: EdgeInsets.only(left:20.0, right: 20.0),
                child: TextFormField(
                  controller: fname,
                  decoration: InputDecoration(
                      hintText: 'Enter First Name',
                      hintStyle: TextStyle(
                      ),
                      suffixIcon: Icon(Icons.account_box,color: kPrimaryColor,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: kPrimaryColor,
                          width: 1.5
                        ),
                      ),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(25.0),
                    //   borderSide: BorderSide(
                    //     color: Colors.black,
                    //     width: 1.5,
                    //   ),
                    // ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color:Colors.grey,width: 1.5,),

                      ),
                  ),
                  validator: (String value){
                    if(value.isEmpty){
                      return 'This field cannot be empty';
                    }
                    return null;
                  },
                )
            ),
            SizedBox(height: 10.0,
            ),
            Padding(
                padding: EdgeInsets.only(left:20.0, right: 20.0),
                child: TextFormField(
                  controller: lname,
                  decoration: InputDecoration(
                      hintText: 'Enter Last Name',
                      hintStyle: TextStyle(

                      ),
                      suffixIcon: Icon(Icons.account_box,color: kPrimaryColor,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                            color: kPrimaryColor,
                            width: 1.5
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color:Colors.grey,width: 1.5),
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
            SizedBox(height: 10.0,
            ),
            Padding(
                padding: EdgeInsets.only(left:20.0, right: 20.0),
                child: TextFormField(
                  controller: phone,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Enter phone number',
                      hintStyle: TextStyle(
                      ),
                      suffixIcon: Icon(Icons.phone,color: kPrimaryColor,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                            color: kPrimaryColor,
                            width: 1.5
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color:Colors.grey, width: 1.5),
                      )


                  ),
                  validator: (String value){
                    if(value.isEmpty){
                      return 'This field cannot be empty';
                    }
                    if(!RegExp(r'[0-9]').hasMatch(value)){
                      return 'Please enter a valid phone number';
                    }
                    return null;
                  },
                )
            ),
            SizedBox(height: 10.0,
            ),
            Padding(
                padding: EdgeInsets.only(left:20.0, right: 20.0),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      hintText: 'Enter email',
                      hintStyle: TextStyle(

                      ),
                      suffixIcon: Icon(Icons.email,color: kPrimaryColor,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                            color: kPrimaryColor,
                            width: 1.5
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color:Colors.grey, width: 1.5),
                      )


                  ),
                  validator: (String value){
                    if(value.isEmpty){
                      return 'This field cannot be empty';
                    }
                    if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                      return 'Please enter a valid Email';
                    }
                    return null;
                  },
                )),
            SizedBox(
              height: 10.0,
            ),
            Padding(
                padding: EdgeInsets.only(left:20.0, right: 20.0),
                child: TextFormField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter password',
                      hintStyle: TextStyle(

                      ),
                      suffixIcon: Icon(Icons.lock,color: kPrimaryColor,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                            color: kPrimaryColor,
                            width: 1.5
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
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

            SizedBox(height: 10.0,
            ),
            Padding(
                padding: EdgeInsets.only(left:20.0, right: 20.0),
                child: TextFormField(
                  controller: cpass,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Confirm password',
                      hintStyle: TextStyle(

                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                            color: kPrimaryColor,
                            width: 1.5
                        ),
                      ),
                      suffixIcon: Icon(Icons.lock,color: kPrimaryColor,),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color:Colors.grey),
                      )


                  ),
                  validator: (String value){
                    if(value.isEmpty){
                      return 'This field cannot be empty';
                    }
                    if(pass.text != cpass.text){
                      return 'Password does not match';
                    }
                    return null;


                  },
                )
            ),


            SizedBox(height: 40.0,
            ),

            ButtonTheme(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    //  side: BorderSide(color: Colors.red)
                  ),
                 // padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                  child: Text('submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),),
                  //Icon( Icons.arrow_forward, color: Colors.white,),
                  color: kPrimaryColor ,
                  onPressed: (){
                    if(_fkey.currentState.validate()){
                      signup();
                       //return Verify();

                    }else{
                      print('Unsuccessful');
                    }

               //     if (fname.text.isNotEmpty && lname.text.isNotEmpty && pass.text.isNotEmpty && email.text.isNotEmpty){

                 //   }

                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => Verify()));
                    //  return Verify();
                  },
                )
            )


          ],
        ),
      )),
    );
  }
}


