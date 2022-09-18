import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and column Layout',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Row and column Layout'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),

      // Example only for padding

      // body: Padding(
      //   padding: EdgeInsets.all(50),
      //   child: Text(
      //     "Hello only padding",
      //     style: TextStyle(
      //       fontSize: 24,
      //     ),
      //   ),
      // ),

      // body: Row(
      //   children: [
      //     Text("Hello Row Widget"),
      //     FloatingActionButton(
      //       onPressed: (){},
      //       child: Text(
      //           "Hi"
      //       ),
      //     ),
      //     Container(
      //       color: Colors.grey,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text("Inside container"),
      //     ),
      //   ],
      // ),


      // body: Row(
      //
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   // mainAxisAlignment: MainAxisAlignment.end,
      //   // mainAxisAlignment: MainAxisAlignment.start,
      //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   // crossAxisAlignment: CrossAxisAlignment.start,
      //   // crossAxisAlignment: CrossAxisAlignment.end,
      //   // crossAxisAlignment: CrossAxisAlignment.stretch,
      //
      //   children: [
      //     Container(
      //       color: Colors.deepOrange[800],
      //       padding: EdgeInsets.all(10.0),
      //       child: Text(
      //         'con 1',
      //       ),
      //     ),
      //     Container(
      //       color: Colors.limeAccent,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text(
      //           'con 2'
      //       ),
      //     ),
      //     Container(
      //       color: Colors.green[800],
      //       padding: EdgeInsets.all(50.0),
      //       child: Text(
      //           'cont 3'
      //       ),
      //     ),
      //   ],
      // ),

      // body: Column(
      //   children: [
      //     Text("Hello Row Widget"),
      //     FloatingActionButton(
      //       onPressed: (){},
      //       child: Text(
      //           "Hi"
      //       ),
      //     ),
      //     Container(
      //       color: Colors.grey,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text("Inside container"),
      //     ),
      //   ],
      // ),

      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   // mainAxisAlignment: MainAxisAlignment.end,
      //   // mainAxisAlignment: MainAxisAlignment.start,
      //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   // crossAxisAlignment: CrossAxisAlignment.start,
      //   // crossAxisAlignment: CrossAxisAlignment.end,
      //   // crossAxisAlignment: CrossAxisAlignment.stretch,
      //
      //   children: [
      //     Container(
      //       color: Colors.deepOrange[800],
      //       padding: EdgeInsets.all(30.0),
      //       child: Text(
      //         'inside container 1',
      //       ),
      //     ),
      //     Container(
      //       color: Colors.limeAccent,
      //       padding: EdgeInsets.all(50.0),
      //       child: Text(
      //           'inside container 2'
      //       ),
      //     ),
      //     Container(
      //       color: Colors.green[800],
      //       padding: EdgeInsets.all(70.0),
      //       child: Text(
      //           'inside container 3'
      //       ),
      //     ),
      //   ],
      // ),

      body: Row(
        children: [
          Expanded(
              child: Container(
                color: Colors.limeAccent,
                padding: EdgeInsets.all(30.0),
                child: Text(
                  '1',
                ),
              ),
          ),
          Container(
            color: Colors.black12,
            padding: EdgeInsets.all(30.0),
            child: Text(
              '2',
            ),
          ),
          Container(
            color: Colors.greenAccent,
            padding: EdgeInsets.all(30.0),
            child: Text(
              '3',
            ),
          ),
        ],
      ),

      // body: Column(
      //   children: [
      //     Expanded(
      //         child: Container(
      //           color: Colors.limeAccent,
      //           padding: EdgeInsets.all(30.0),
      //           child: Text(
      //             '1',
      //           ),
      //         ),
      //     ),
      //     Container(
      //       color: Colors.black12,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text(
      //         '2',
      //       ),
      //     ),
      //     Container(
      //       color: Colors.greenAccent,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text(
      //         '3',
      //       ),
      //     ),
      //   ],
      // ),

    );
  }
}


// import 'package:flutter/material.dart';
//
// void main() => runApp(MaterialApp(
//   theme: ThemeData(
//     primarySwatch: Colors.deepPurple,
//   ),
//   home: FinalTest1(),
// ));
//
// class FinalTest1 extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Virat's Profile"),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/virat.jpg'),
//                 radius: 100,
//               ),
//             ),
//             SizedBox(height: 100,),
//
//             Row(
//               children: [
//                 Text(
//                   'NAME :',
//                   style: TextStyle(
//                     color: Colors.deepPurple,
//                     letterSpacing: 2.0,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20.0,
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 Text(
//                   'Virat Kohli',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20.0,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 40),
//             Row(
//               children: [
//                 Text(
//                   'AGE :',
//                   style: TextStyle(
//                     color: Colors.deepPurple,
//                     letterSpacing: 2.0,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20.0,
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 Text(
//                   '32',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20.0,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 40),
//             Row(
//               children: [
//                 Icon(
//                   Icons.email_rounded,
//                   color: Colors.deepPurple,
//                 ),
//                 SizedBox(width: 12.0),
//                 Text(
//                   ' :  virat@gmail.com',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20.0,
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }