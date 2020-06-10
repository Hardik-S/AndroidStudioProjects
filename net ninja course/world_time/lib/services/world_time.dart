import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  // LOCATION NAME FOR UI
  String location;

  // TIME IN SAID LOCATION
  String time;

  // URL TO ASSET FLAG ICON FOR SAID LOCATION
  String flag;

  // END BIT THAT UPDATES IN THE URL (LOCATION URL FOR API ENDPOINT)
  String url;

  // IS DAYTIME
  bool isDaytime;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    try{
      //MAKING THE REQUEST
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      // GETTING DATA PROPERTIES
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(0,3);

      // CREATING DATETIME OBJECT
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // SET THE TIME PROPERTY AND FORMAT IT INTO HUMAN READABLE
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    }
    catch (e){
      print('CAUGHT AN ERROR: $e');
      time = 'Error, please try again later.';
    }


  }
}

