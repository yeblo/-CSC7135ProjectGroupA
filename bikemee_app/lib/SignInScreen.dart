import 'dart:convert';
import 'package:bikemee_app/Api.dart';
import 'package:bikemee_app/constants.dart';
import 'package:bikemee_app/mappage.dart';
import 'package:bikemee_app/signin.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:fluttertoast/fluttertoast.dart';
class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final GlobalKey<FormState> _fkey = GlobalKey<FormState>();

  Future login() async {
    try{
      var response = await http.post(Api.login_API, body: {
        "email": email.text,
        "password": password.text,
      });
      var data = json.decode(response.body);
      if (data == "Success") {
     //   Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MapPage(),),);

      } else {
        Fluttertoast.showToast(
            msg: data,
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
        body: Form(
          key: _fkey,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo_size.jpg"),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Center(
                            child: Text(
                              "SIGN IN",
                              style: Theme.of(context).textTheme.display1,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Icon(
                                Icons.alternate_email,
                                color: kPrimaryColor,
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: email,
                                decoration: InputDecoration(
                                  hintText: "Email Address",
                                ),
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'This field cannot be empty';
                                  }
                                  return null;
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.lock,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: password,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                              ),
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'This field cannot be empty';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20),
                            Spacer(),
                            FloatingActionButton(
                                onPressed: () {
                                  if (_fkey.currentState.validate()) {
                                    login();
                                  } else {
                                    print('Unsuccessful');
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kPrimaryColor,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.black,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}























//
// class SignInScreen extends StatelessWidget {
//   TextEditingController email = new TextEditingController();
//   TextEditingController password = new TextEditingController();
//   final GlobalKey<FormState> _fkey = GlobalKey<FormState>();
//
//   Future login() async {
//     try{
//       var response = await http.post(Api.signup_API, body: {
//         "email": email.text,
//         "password": password,
//       });
//       var data = json.decode(response.body);
//       if (data == "Success") {
//         Navigator.push(context, MaterialPageRoute(builder: (context)=>MapPage(),),);
//
//       } else {
//         Fluttertoast.showToast(
//             msg: data,
//             textColor: Colors.black,
//             backgroundColor: Colors.transparent,
//             toastLength: Toast.LENGTH_SHORT,
//             fontSize: 16
//         );
//         print(data);
//         // FlutterToast(context).showToast(
//         //     child: Text('Username and password invalid',
//         //         style: TextStyle(fontSize: 25, color: Colors.red)));
//       }}catch (e){
//       return 'Error';
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Form(
//       key: _fkey,
//       child: Column(
//         children: <Widget>[
//           Expanded(
//             flex: 2,
//             child: Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage("assets/images/logo_size.jpg"),
//                   fit: BoxFit.contain,
//                   alignment: Alignment.bottomCenter,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 4,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 children: <Widget>[
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Center(
//                         child: Text(
//                           "SIGN IN",
//                           style: Theme.of(context).textTheme.display1,
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Spacer(),
//                   Padding(
//                     padding: const EdgeInsets.only(bottom: 40),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(right: 16),
//                           child: Icon(
//                             Icons.alternate_email,
//                             color: kPrimaryColor,
//                           ),
//                         ),
//                         Expanded(
//                           child: TextFormField(
//                             controller: email,
//                             decoration: InputDecoration(
//                               hintText: "Email Address",
//                             ),
//                             validator: (String value) {
//                               if (value.isEmpty) {
//                                 return 'This field cannot be empty';
//                               }
//                               return null;
//                             },
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.only(right: 16),
//                         child: Icon(
//                           Icons.lock,
//                           color: kPrimaryColor,
//                         ),
//                       ),
//                       Expanded(
//                         child: TextFormField(
//                           controller: password,
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             hintText: "Password",
//                           ),
//                           validator: (String value) {
//                             if (value.isEmpty) {
//                               return 'This field cannot be empty';
//                             }
//                             return null;
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                   Spacer(),
//                   Padding(
//                     padding: const EdgeInsets.only(bottom: 30),
//                     child: Row(
//                       children: <Widget>[
//                         SizedBox(width: 20),
//                         Spacer(),
//                         FloatingActionButton(
//                             onPressed: () {
//                               if (_fkey.currentState.validate()) {
//                                login();
//                               } else {
//                                 print('Unsuccessful');
//                               }
//                             },
//                             child: Container(
//                               padding: EdgeInsets.all(16),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: kPrimaryColor,
//                               ),
//                               child: Icon(
//                                 Icons.arrow_forward,
//                                 color: Colors.black,
//                               ),
//                             ))
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }
