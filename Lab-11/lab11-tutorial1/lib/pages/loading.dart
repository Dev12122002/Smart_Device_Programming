import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// Importing the necessary packages for the word_time.dart file..
import '../services/word_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String? time = 'Loading...';

  void setWorldTime() async {
    WordTime timeinstance =
        WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata');
    await timeinstance.getTime();
    // setState(() {
    //   time = timeinstance.time;
    // });

    //pushes home screen on top of login screen...
    //Means login screen is still alive in stack...
    //Navigator.pushNamed(context,'/home');

    //So instead of pushing new screen on old screen
    // we replace old screen by new screen by
    // Navigator.pushReplacementNamed(context, '/home');

    //But now we also want to redirect the data from
    // loading screen to home screen...how?...
    //By passing third argument a MAP(Key, value --- pairs) as named parameter.
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location':timeinstance.location,
      'flag': timeinstance.flag,
      'time': timeinstance.time,
    });
   // now we have to accept this data in home screen and display there
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Init State function in choose location");
    setWorldTime();
    // getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SpinKitPouringHourGlassRefined(
        color: Colors.white,
        size: 50.0,
      )
    );
  }
}
