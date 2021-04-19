import 'package:flutter/material.dart';
import 'package:bikemee_app/constants.dart';


class Verify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Padding(

          ),
        ),
      ),
    );


  }
}







// class Verify extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //     title: Text("BikeMee")
//       // ),
//       body: Column(
//         children: [
//           SizedBox(height: 10.0,
//           ),
//           Center(
//               child: Image.asset("assets/images/logo_size.jpg", height: 250.0, width: 250.0,)
//           ),
//           SizedBox(height: 10.0,
//           ),
//           Padding(
//               padding: EdgeInsets.only(left:20.0, right: 20.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     hintText: 'Enter OTP',
//                     hintStyle: TextStyle(
//
//                     ),
//                     suffixIcon: Icon(Icons.phone,color: kPrimaryColor,),
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color:Colors.black),
//                     )
//
//
//                 ),
//               )
//           ),
//           SizedBox(height: 10.0,
//           ),
//           ButtonTheme(
//               child: RaisedButton(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   //  side: BorderSide(color: Colors.red)
//                 ),
//                 child: Icon( Icons.arrow_forward, color: Colors.white,),
//                 color: kPrimaryColor ,
//                 onPressed: (){
//
//                 },
//               ))
//
//
//         ],
//       ),
//     );
//   }
// }
