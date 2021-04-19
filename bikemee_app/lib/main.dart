import 'package:bikemee_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bikemee_app/SignInScreen.dart';
import 'package:bikemee_app/login.dart';
import 'package:bikemee_app/verify.dart';
import 'package:bikemee_app/register.dart';
import 'package:bikemee_app/mappage.dart';

import 'wallet.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen 1',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        primarySwatch: Colors.blue,
      ),
      //home: WelcomeScreen(),
      initialRoute: "/wallet",
      routes: {
        "/": (context) => WelcomeScreen(),
        "/login": (context) => SignInScreen(),
       "/verify": (context) => Verify(),
        "/register": (context) => Register(),
        "/map": (context) => MapPage(),
        "/wallet": (context) => Wallet(),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [
          Expanded(
            flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bike_r.jpg"),
                    fit: BoxFit.fitWidth,
                  )
                ),
              )
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget> [
              SizedBox(
                height: 10
              ),
              FittedBox(
                child: GestureDetector(

                    onTap:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                     return Login();

                    },
                  ));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom:25),
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: kPrimaryColor,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Get Started",
                        style: Theme.of(context).textTheme.button.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width:10),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )
                    ]
                  )
                )
                ),
              )
            ],
          ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:<Widget>[

              Text("Bike Mee by Dowlin, Inc.",
                style: TextStyle(

                ),)

            ]
          ))
        ],
      ),
    );
  }
}
