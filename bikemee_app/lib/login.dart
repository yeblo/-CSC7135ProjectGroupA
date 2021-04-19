import 'package:bikemee_app/SignInScreen.dart';
import 'package:bikemee_app/register.dart';
import 'package:flutter/material.dart';
import 'package:bikemee_app/constants.dart';
import 'package:bikemee_app/verify.dart';
import 'package:twilio_flutter/twilio_flutter.dart';




class Login extends StatelessWidget {
  @override
 // TextEditingController pnumber = new TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Text("BikeMee")
      // ),
      body: Column(
        children: [
          SizedBox(height: 10.0,
          ),
          Center(
              child: Image.asset("assets/images/logo_size.jpg", height: 250.0, width: 250.0,)
          ),
          SizedBox(height: 10.0,
          ),

          ElevatedButton(
            child: Text('Sign in',
            style: TextStyle(

            )),
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              onPrimary: Colors.white,
              shadowColor: Colors.red,
              elevation: 5,
              padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700
              )
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()));
              //  return Verify();
            },
          ),
          SizedBox(
            height :40
          ),
          Text("New here?",

          ),
          ElevatedButton(
            child: Text('Sign up'
            ),
            style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                onPrimary: Colors.white,
                shadowColor: Colors.red,
                elevation: 5,
                padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                )
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()));

            },
          ),
        ],
      ),
    );
  }
}
