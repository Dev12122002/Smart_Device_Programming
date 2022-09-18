// Profile code
// import 'package:flutter/material.dart';
//
// void main() => runApp(MaterialApp(
//   theme: ThemeData(
//     primarySwatch: Colors.deepPurple,
//   ),
//   home: Profile(),
// ));
//
// class Profile extends StatefulWidget {
//   const Profile({Key? key}) : super(key: key);
//
//   @override
//   State<Profile> createState() => _ProfileState();
// }
//
// class _ProfileState extends State<Profile> {
//
//   num age = 32;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Virat's Profie"),
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
//                   '$age',
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
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: (){
//               setState(() {
//                 age += 1;
//               });
//             },
//             child: Icon(Icons.add),
//           ),
//           SizedBox(width: 10,),
//           FloatingActionButton(
//             onPressed: (){
//               setState(() {
//                 age -= 1;
//               });
//             },
//             child: Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// void main() => runApp(MaterialApp(
//   home: EchoList(),
// ));
// class EchoList extends StatefulWidget {
//   const EchoList({Key? key}) : super(key: key);
//   @override
//   State<EchoList> createState() => _EchoListState();
// }
// class _EchoListState extends State<EchoList> {
//   List<String> quotes = [
//     'The truth is realy pure and never simple',
//     'I see humans but no humanity',
//     'The time is always right to do what is right'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quotes'),
//         centerTitle: true,
//         backgroundColor: Colors.greenAccent,
//       ),
//
//       body: Column(
//         children: quotes.map((quote) => Text(quote)).toList(),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: EchoList(),
));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  // List<String> quotes = [
  //   'The truth is realy pure and never simple',
  //   'I see humans but no humanity',
  //   'The time is always right to do what is right'
  // ];

  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple',author: 'John Snow'),
    Quote(author: 'John Snow', text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author: 'John Snow'),
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,

                color: Colors.deepPurple,

              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,

                color: Colors.deepPurple,

              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
