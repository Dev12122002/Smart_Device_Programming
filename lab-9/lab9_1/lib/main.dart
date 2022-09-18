import 'package:flutter/material.dart';
//import 'package:lab8_2/quote.dart';
import 'quote.dart'; // due to same directory file no need path
import 'package:lab9_1/quote_card.dart';

void main() => runApp(MaterialApp(
  home: EchoList(),
));
class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}
class _EchoListState extends State<EchoList> {
/*
List<String> quotes = [
'The truth is realy pure and never simple',
'I see humans but no humanity',
'The time is always right to do what is right'
];
// List<String> author = [];
*/
/* this will create error..because list is now not of string....
List<String> quotes = [
Quote(text: 'The truth is realy pure and never simple',author:
'jignesh1'),
];
*/
  List<Quote> quotes = [
    Quote(text: 'Working jobs we hate to buy shits we do not need',author:
    'Tyler durden'),
    Quote(author: 'Narrator', text: 'Losing hopes was freedom'),
    Quote(text: 'Remember. Hope is a good thing, maybe the best of things, and no good thing ever dies.',author:
    'Andy dufresne'),
  ];

  // Widget quoteTemplate(quote){
  //   return QuoteCard(quote: quote,);
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}

