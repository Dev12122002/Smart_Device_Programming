// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';

// class Loading extends StatefulWidget {
//   @override
//   State<Loading> createState() => _LoadingState();
// }

// class _LoadingState extends State<Loading> {
//   void getTime() async {
//     Response response = await get(
//         Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kolkata'));
//     Map timeData = jsonDecode(response.body);
//     print(timeData);
//     String dateTime = timeData['datetime'];
//     String offset = timeData['utc_offset'];
//     print(dateTime);
//     print(offset);
//     DateTime currentTime = DateTime.parse(dateTime);
//     print(currentTime);

//     String offsetHours = offset.substring(1, 3);
//     print(offsetHours);
//     String offsetMinutes = offset.substring(4, 6);
//     print(offsetMinutes);
//     currentTime = currentTime.add(Duration(
//         minutes: int.parse(offsetMinutes), hours: int.parse(offsetHours)));
//     print(currentTime);
//   }

//   @override
//   void initState() {
//     super.initState();
//     getTime();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text('LOADING SCREEN'),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lab12_tutorial1/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String? time = 'LOADING..........';
  void setWorldTime() async {
    WordTime timeInstance =
        WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata');

    await timeInstance.getTime();

    Navigator.pushNamed(context, "/home", arguments: {
      'location': timeInstance.location,
      'flag': timeInstance.flag,
      'time': timeInstance.time,
      'isDayTime': timeInstance.isDayTime,
    });
    // setState(() {
    //   time = timeInstance.time;
    // });
  }

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.indigo,
          size: 50.0,
        ),
      )
    );
  }
}
