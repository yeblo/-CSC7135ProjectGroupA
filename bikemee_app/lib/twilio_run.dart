import 'dart:convert';

import 'package:http/http.dart' as http;

var cred  = 'ACd1c1a334e1a78f76bf15c81b36e2e389:2d38316714e17b20ad21c3c57e5ac2c3';

var bytes = utf8.encode(cred);

var base64Str = base64.encode(bytes);
var url = 'https://api.twilio.com/2010-04-01/Accounts/ACCOUNT_SID/Messages.json';

var  response =    http.post(url, headers: {
'Authorization': 'Basic ${base64Str}' },
body: {
'From': '‪7738400931',

'To': '‪2258006991‬',

'Body': 'OTP Code'
});
//print('Response status : ${response.statusCode}');

//print('Response body: ${response.body}');