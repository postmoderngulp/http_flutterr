import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_flutterr/UserModel.dart';




class data_service {
  void makeRequestToApi() async {

var url = '176.28.64.201:3437/auth/sign-up';
    String body = '{"email":"emaill34@mail.com","username":"stass1234tt","password":"passwordwrd432"}';

    var client = http.Client();
    try {
      var response = await client
          //.post(Uri.http('176.28.64.201:3437', '/auth/sign-in'), body: {
          .get(Uri.http('176.28.64.201:3437', '/auth/sign-in'),
          headers: {"Content-Type":"application/json"});
      print(response.statusCode);
      print(response.body);} finally {
      client.close();
    }
  }
}


