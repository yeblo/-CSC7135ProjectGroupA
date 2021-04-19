import 'package:bikemee_app/scan.dart';
import 'package:flutter/material.dart';

import 'constants.dart';


class BikesAvailable extends StatefulWidget {
  @override
  _BikesAvailableState createState() => _BikesAvailableState();
}

class _BikesAvailableState extends State<BikesAvailable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bikes Available at Dock 1"),
      ),
      body: Column(

        children: <Widget> [

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
              child: Icon(Icons.bike_scooter_rounded,
              size: 50,
              color: Colors.deepPurple[900]),

        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Text('Bike 234',
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.left),
        )),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(25),
              child:Container(
            width: 100,
          child:  ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return Scan();
                },));
            },
            style: ButtonStyle(
                backgroundColor:MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return kPrimaryColor;
                    return kPrimaryColor; // Use the component's default.
                  },
                )
            ),
            child: Text('Rent'),
          ),
        )))
          ]

          ),

          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),


          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Icon(Icons.bike_scooter_rounded,
                      size: 50,
                      color: Colors.deepPurple[900]),

                ),

                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Text('Bike 235',
                          style:TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                          ),
                          textAlign: TextAlign.left),
                    )),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(25),
                        child:Container(
                          width: 100,
                          child:  ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context){
                                  return Scan();
                                },));
                            },
                            style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.pressed))
                                      return kPrimaryColor;
                                    return kPrimaryColor; // Use the component's default.
                                  },
                                )
                            ),
                            child: Text('Rent'),
                          ),
                        )))
              ]

          ),

          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),


          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Icon(Icons.bike_scooter_rounded,
                      size: 50,
                      color: Colors.deepPurple[900]),

                ),

                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Text('Bike 236',
                          style:TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                          ),
                          textAlign: TextAlign.left),
                    )),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(25),
                        child:Container(
                          width: 100,
                          child:  ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context){
                                  return Scan();
                                },));
                            },
                            style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.pressed))
                                      return kPrimaryColor;
                                    return kPrimaryColor; // Use the component's default.
                                  },
                                )
                            ),
                            child: Text('Rent'),
                          ),
                        )))
              ]

          ),

          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),

        ],
      ),


    );
  }
}
