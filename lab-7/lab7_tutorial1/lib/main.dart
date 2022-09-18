import 'package:flutter/material.dart';

// For Inserting images and icons

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Icon widget app'),
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
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(

        child: Image(
          // AssetImage :- to use images from project packages
          // image: AssetImage('assets/photo2.jpg'),
          // AssetImage :- to use images from sub directory of
          // project packages
          // image: AssetImage('assets/sub_assets/photo3.jpeg'),
          //  INSERTING NETWORK IMAGE
          image: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
        ),

        // child: Icon(
        //   Icons.flutter_dash,
        //   color:Colors.purple,
        //   size: 100.0,
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("click"),
      ),
    );
  }
}

// For Buttons

// void main() => runApp(MaterialApp(
//   home: HomeScreen(),
// ));
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Button Widget App",
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.limeAccent,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text(
//             "Button",
//             style: TextStyle(
//               color: Colors.black,
//             ),
//           ),
//           onPressed: (){
//             print("Print on console...");
//           },
//           style: ElevatedButton.styleFrom(
//             primary: Colors.limeAccent,
//               padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
//               textStyle: TextStyle(
//                 fontSize: 40,
//                 fontWeight: FontWeight.bold,
//               ),
//           ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: Text(
//             'Click',
//             style: TextStyle(
//               color: Colors.black,
//             ),
//           ),
//           backgroundColor: Colors.limeAccent,
//         ),
//       );
//   }
// }
