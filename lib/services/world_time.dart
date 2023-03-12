import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
class World_time {
  String? location; //location name  for the ui
  String? time; //the time in the location
  String? flag; //url to an asset to flaag icon
  String? url; //location url for api endpoints

  World_time({this.location, this.flag, this.url});

  Future<void> gettime() async {
    try {
      //make the request
      Response respons = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(respons.body);
      print(data);

      //get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      // print(datetime);
      // print(offset);

      //create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add((Duration(hours: int.parse(offset))));
      print(now);
      //set the time property
      time = now.toString();
    }
    catch (e) {
      print("caught error $e");
      time = "could not get time data";
    }
  }
}