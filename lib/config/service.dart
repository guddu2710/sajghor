import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class Services {
  static String baseUrl ="http://sajghor.syncoders.com/";
//  static String baseUrl = "http://192.168.0.199:8006/api/";
  SharedPreferences sharedPreferences;
  var token;
  var userdata;
  String url;
  String method;
  Services(this.url);
    // /******  Noauth Based Service Start *********/

  noAuthPostMethod(formData,context,[scaffoldKey]) async{
    String requestUrl = baseUrl + url;
    print(url);

    print(requestUrl);
    var connectivityResult = await (Connectivity().checkConnectivity());
    if(connectivityResult == ConnectivityResult.none){
      scaffoldKey.currentState.showSnackBar(
          SnackBar(
            backgroundColor:Colors.red[800] ,
            content: Text('Please check internet connection'),
            duration: Duration(seconds: 3),
          ));
      //   Toast.show("Please check internet connection",context,duration: Toast.LENGTH_LONG, gravity:  Toast.TOP,);
    }else {
      try {
        print(requestUrl.toString());
        var response = await http.post(requestUrl, body: formData);
        print("response $response");
        final responseJson = json.decode(response.body);
        print("responseJson $responseJson");
        return responseJson;
      }catch(e){
        print("catch $e");
//        Toast.show("Server Error", context,
//          duration: Toast.LENGTH_LONG, gravity: Toast.TOP,);
      }
    }

  }

}
