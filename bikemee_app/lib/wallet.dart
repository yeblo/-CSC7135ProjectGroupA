import 'dart:convert';

import 'package:bikemee_app/Api.dart';
import 'package:bikemee_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:fluttertoast/fluttertoast.dart';
import "package:http/http.dart" as http;

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var cardNumber,expiryDate,cardHolderName,cvvCode,isCvvFocused;
  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
    ccdb();

  }

  Future ccdb() async {
    try{
      var response = await http.post(Api.ccdb, body: {
        "cardnumber": cardNumber.toString(),
        "expirydate": expiryDate.toString(),
        "chm":cardHolderName.toString(),
        "cvv":cvvCode.toString(),
      });

      print(cardNumber);

      var data = json.decode(response.body);
      if (data == "Saved Successfully") {
        Fluttertoast.showToast(
            msg: data,
            textColor: Colors.black,
            backgroundColor: Colors.transparent,
            toastLength: Toast.LENGTH_SHORT,
            fontSize: 16
        );
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

  Future <AlertDialog> _showValidDialog(BuildContext context, String title, String content,) {
    showDialog<AlertDialog>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xff1b447b),
          title: Text(title),
          content: Text(content),
          actions: [
            FlatButton(
                child: Text(
                  "Ok",
                  style: TextStyle(fontSize: 18,color: Colors.cyan),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Card Details',
        style: TextStyle(
          color: Colors.white,
        ),),

      ),
      body: Column(
          children: <Widget>[
    //         CreditCardWidget(
    //     cardNumber: cardNumber,
    //     expiryDate: expiryDate,
    //     cardHolderName: cardHolderName,
    //     cvvCode: cvvCode,
    //     showBackView: isCvvFocused,
    //     cardBgColor: Colors.black,
    //     obscureCardNumber: true,
    //     obscureCardCvv: true,
    //     height: 175,
    //     textStyle: TextStyle(color: Colors.yellowAccent),
    //     width: MediaQuery.of(context).size.width,
    //     animationDuration: Duration(milliseconds: 1000),
    //
    // ),
            CreditCardForm(
              formKey: formKey,
              onCreditCardModelChange: onCreditCardModelChange,
              obscureCvv: true,
              obscureNumber: true,
              cardNumberDecoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Number',
                hintText: 'XXXX XXXX XXXX XXXX',
              ),
              expiryDateDecoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Expired Date',
                hintText: 'XX/XX',

              ),
              cvvCodeDecoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'CVV',
                hintText: 'XXX',
              ),
              cardHolderDecoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Card Holder Name',
              ),
            ),

            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                margin: const EdgeInsets.all(8),
                child: const Text(
                  'Validate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              color: kPrimaryColor,
              //const Color(0xff1b447b),
              onPressed: () {
                if (formKey.currentState.validate()) {
                  print('valid!');
                  _showValidDialog(context,"Valid","Your card successfully valid !!!");
                 // ccdb();
                } else {
                  print('invalid!');
                }
              },
            )

          ],


    ));
  }
}
