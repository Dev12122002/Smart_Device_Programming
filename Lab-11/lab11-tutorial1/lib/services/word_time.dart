import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WordTime {
  String? location; // Variable to Store the real location..
  String? time; // Variable to store the Time..
  String? flag; // Variable to store the flag image..
  String? url; // Variable to Store the url
  WordTime({this.location, this.flag, this.url});

  // Request to get the data from the API..
  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
// ur: Asia/Kolkata
      Map timeData = jsonDecode(response.body);
      // Get Particular Data using the property..
      String dateTime = timeData['datetime'];
      String offset = timeData['utc_offset'];
      String offsetHours = offset.substring(1, 3);
      String offsetMinutes = offset.substring(4, 6);
      // Current date and Time..
      DateTime currenttime = DateTime.parse(dateTime);
      currenttime = currenttime.add(Duration(
          minutes: int.parse(offsetMinutes), hours: int.parse(offsetHours)));
      // Setting the the Current date and time to the time property of the
      //class..
      // time = currenttime.toString();
      time = DateFormat.jm().format(currenttime);
    } catch (e) {

      print('caught an error: $e');
      time = 'Could not get time data';
    }
  }
}
