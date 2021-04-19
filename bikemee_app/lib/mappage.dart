//import 'package:bikemee_app/showBottom.dart';
import 'package:bikemee_app/active.dart';
import 'package:bikemee_app/bikesavailable.dart';
import 'package:bikemee_app/rental.dart';
import 'package:bikemee_app/report.dart';
import 'package:bikemee_app/scan.dart';
import 'package:bikemee_app/wallet.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:bikemee_app/constants.dart';


class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}



class _MapPageState extends State<MapPage> {
  Set <Marker> _markers = {};
  BitmapDescriptor mapMarker;
  final scaffoldState = GlobalKey<ScaffoldState>();
  Position currentPosition;
  var geoLocator = Geolocator();
  var newGoogleMapController;

 // GoogleMapController newGoogleMapController = new GoogleMapController(GoogleMapController controller);
  void locatePosition() async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;
    LatLng latLngPosition = LatLng(position.latitude, position.longitude);
    CameraPosition cp = new CameraPosition(target: latLngPosition, zoom :14);

    newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(cp));
}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setCustomMarker();
  }

  void setCustomMarker() async{
    mapMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'assets/images/rcycling.png');
  }

  void _showSheet() {
    // Show BottomSheet here using the Scaffold state instead ot«f the Scaffold context
    scaffoldState.currentState
        .showBottomSheet((context) => Container(
      width: 500,
     //   color: Colors.white,
        height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 16.0,
                spreadRadius: 0.5,
                offset: Offset(0.7,0.7)
            )
          ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          SizedBox(
            height: 40,
          ),
          Text("Place: LSU Student Union"),
          SizedBox(
            height: 6,
          ),
          Text("Bikes Available: 6"),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                return BikesAvailable();

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
            child: Text('See Available Bikes'),
          )
          // RaisedButton(onPressed: (){
          //
          // },
          // child: Text('View Bikes Available',
          // style: const TextStyle(
          //   color: Colors.black,
          //
          // ),
          //
          // )
          // )
        ],
      ),
    )
    );
  }
  void _onMapCreated(GoogleMapController controller){

    controller.setMapStyle(Utils.mapStyle);
    newGoogleMapController = controller;
    locatePosition();
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(30.4145, -91.1783),
        icon: mapMarker,
        infoWindow: InfoWindow(
          title: 'LSU Parade Ground',
          snippet: '10 Bikes available',

        ),
          onTap: ()
          {
           _showSheet();
          },

        )
      );


      _markers.add(
          Marker(markerId: MarkerId('id-2'), position: LatLng(30.4145, -91.1783),
              icon: mapMarker,
              infoWindow: InfoWindow(
                  title: 'LSU Student Union',
                  snippet: '10 Bikes available',
              ),
            onTap: (){
              _showSheet();
              // ShowBottom();
            },
          )
      );

      _markers.add(
          Marker(markerId: MarkerId('id-3'), position: LatLng( 30.3929067, -911851912),
              icon: mapMarker,
              infoWindow: InfoWindow(
                  title: 'LSU Student Union',
                  snippet: '10 Bikes available',
              ),
            onTap: (){
              _showSheet();
              // ShowBottom();
            },)
      );

      _markers.add(
          Marker(markerId: MarkerId('id-4'), position: LatLng(30.3971006, -91.1976882),
              icon: mapMarker,
              infoWindow: InfoWindow(
                  title: 'LSU Student Union',
                  snippet: '10 Bikes available',

              ),
            onTap: (){
              _showSheet();

              // ShowBottom();
            },
          )
      );

      _markers.add(
          Marker(markerId: MarkerId('id-5'), position: LatLng(30.4035984, -91.1739149),
              icon: mapMarker,
              infoWindow: InfoWindow(
                  title: 'LSU Student Union',
                  snippet: '10 Bikes available',
                    // ShowBottom()
              ),
            onTap: (){
              _showSheet();

              // ShowBottom();
            },
          )
      );
      _markers.add(
          Marker(markerId: MarkerId('id-6'), position: LatLng(30.4042745, -91.1780395),
              icon: mapMarker,
              infoWindow: InfoWindow(
                  title: 'LSU Student Union',
                  snippet: '10 Bikes available',

              ),
            onTap: (){
              _showSheet();

              // ShowBottom();
            },)
      );

      _markers.add(
          Marker(markerId: MarkerId('id-7'), position: LatLng(30.4066777, -91.1893096),
              icon: mapMarker,
              infoWindow: InfoWindow(
                  title: 'LSU Student Union',
                  snippet: '10 Bikes available',
              ),
              onTap: (){
      _showSheet();

      // ShowBottom();
      },)
      );

      _markers.add(
          Marker(markerId: MarkerId('id-8'), position: LatLng(30.4055365, -91.1774526),
              icon: mapMarker,
              infoWindow: InfoWindow(
                  title: 'LSU Student Union',
                  snippet: '10 Bikes available',

              ),
            onTap: (){
              _showSheet();

              // ShowBottom();
            },)
      );

      _markers.add(
          Marker(markerId: MarkerId('id-9'), position: LatLng(30.4182786,-91.1817367),
              icon: mapMarker,
              infoWindow: InfoWindow(
                  title: 'LSU Student Union',
                  snippet: '10 Bikes available',
              ),
            onTap: (){
              _showSheet();

              // ShowBottom();
            },)
      );

      _markers.add(
          Marker(markerId: MarkerId('id-10'), position: LatLng(30.4091728,-91.1892926),
              icon: mapMarker,
              infoWindow: InfoWindow(
                  title: 'LSU Student Union',
                  snippet: '10 Bikes available',
                onTap: (){
                  _showSheet();

                  // ShowBottom();
                },
              ),)
     );

      // _markers.add(
      //     Marker(markerId: MarkerId('id-1'), position: LatLng(30.4164974,-91.1819571),
      //         icon: mapMarker,
      //         infoWindow: InfoWindow(
      //             title: 'LSU Parade Ground',
      //             snippet: '10 Bikes available'
      //         ))
      //  );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(

      ),
      body:

      GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: CameraPosition(
        target: LatLng(30.4145, -91.1783), //change this to the location of the person using the app,
        zoom: 15.0,
      ),
        zoomControlsEnabled: false,
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        zoomGesturesEnabled: true,
            //there is a lot more options you can add here

      )
,

        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.

          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader
                (accountName: Text('Name'),
                accountEmail: Text('email@gmail.com'),
                currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child:Image.asset('assets/images/sample_pic.png')),
              ),
              // DrawerHeader(
              //   child: Text('Customer Name and email'),
              //   decoration: BoxDecoration(
              //     color: kPrimaryColor,
              //   ),
              // ),
              ListTile(
                title: Text('Active Rentals'),
                leading: Icon(Icons.location_pin),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return Active();

                    },
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.location_history),
                title: Text('Rental History'),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context){
                  //     return Rental();
                  //
                  //   },
                  // ));
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text('Wallet'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return Wallet();

                    },
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.warning),
                title: Text('Report a problem'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return Report();

                    },
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('LogOut'),
                onTap: () {
                  // Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context){
                  //     return Report();
                  //
                  //   },
                  // ));
                },
              ),
            ],
          ),
        ),
      floatingActionButton:  Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
        child: Row(
         // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            SizedBox(
                width: 100,
                height: 100,
                child: FloatingActionButton(
                  onPressed: (){
                    //insert snackbar code for nearest location
                    _showSheet();
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //  padding: EdgeInsets.fromLTRB(left, top, right, bottom),

                        Icon(Icons.location_pin),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('NEARBY'),

                      ]
                  ),
                  backgroundColor: kPrimaryColor,
                  ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: FloatingActionButton(
                onPressed: (){
                  //insert scan page
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return Scan();

                    },
                  ));
                },
                child: Column(
                //  padding: Padding(EdgeInsets.zero),

                    mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  //  padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                    Icon(Icons.qr_code),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('SCAN'),

                  ]
                ),

                  backgroundColor: kPrimaryColor
            ),
            ),],
        ),
      ),


    );
  }
}


class Utils{
  static String mapStyle = '''
  [
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ebe3cd"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#523735"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#f5f1e6"
      }
    ]
  },
  {
    "featureType": "administrative",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#c9b2a6"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#dcd2be"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#ae9e90"
      }
    ]
  },
  {
    "featureType": "landscape.natural",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dfd2ae"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dfd2ae"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#93817c"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#a5b076"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#447530"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f5f1e6"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#fdfcf8"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f8c967"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#e9bc62"
      }
    ]
  },
  {
    "featureType": "road.highway.controlled_access",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e98d58"
      }
    ]
  },
  {
    "featureType": "road.highway.controlled_access",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#db8555"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#806b63"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dfd2ae"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#8f7d77"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#ebe3cd"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dfd2ae"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#b9d3c2"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#92998d"
      }
    ]
  }
]
  
   ''';

}