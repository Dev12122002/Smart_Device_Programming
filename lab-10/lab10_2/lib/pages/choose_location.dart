import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {

// int counter = 0;
//  @override
//  void initState(){
//    // TODO: implement initState
//    super.initState();
//    getData();
//
//  }

  @override
  Widget build(BuildContext context) {
    print('BUILD FUNCTION RUN IN CHOOSE LOCATION...');
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose_location'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
/*    body: ElevatedButton(
       onPressed: (){
         setState((){
           counter += 1;
         });
       },
       child: Text('COUNTER IS : $counter'),
     ), */
    );
  }
}
