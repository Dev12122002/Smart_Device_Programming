import 'package:lab6_tutorial1/lab6_tutorial1.dart' as lab6_tutorial1;
import 'package:test/expect.dart';

/*
void main() {
  //TUTORIAL : 1

  //Future

  print("before...");
  final myFuture = Future<int>.delayed(
    Duration(seconds:1),
    ()=>42
    )
    .then(
      (value)=>print("value: ${value}"),
    )
    .catchError(
      (error)=>print("Error: ${error}"),
    )
    .whenComplete(() => print("Future is completed!"),
    );
  print("After...");
}
*/
/*
Future<void> main() async{

  print("Before the future.");
  final value = await Future<int>.delayed(
    Duration(seconds: 1),
    ()=>42
  );
  print("value: ${value}");
  print("After the Future");
}
*/

/* 
//mini-excersice:1
/// Use the `Future.delayed` constructor to provide a string after two
///    seconds that says "I am from the future."
void main(){
  Future<void>.delayed(
    Duration(seconds: 2),
    ()=>print("I am from the future")
  );
}
*/

/*
//mini-excersice:2
/// Create a `String` variable named `message` that awaits the future to
/// complete with a value.
Future<void> main() async{
  print("Before the Future.");
  final message = await Future<String>.delayed(
    Duration(seconds: 2),
    ()=>"I am from Future."
  );
  print("${message}");
  print("After the Future");
}
*/

/*
Future<void> main() async {
  print("Before the Future.");
  try {
    final message = await Future<String>.delayed(
        Duration(seconds: 2), () => "I am from Future.");
    // throw Exception("error");
    print("${message}");
    print("After the Future");
  } catch (Exception) {
    print(Exception);
  }
}
*/

/*
import 'dart:io';

Future<void> main() async {
  // final file = File('assets/text.txt');
  // final contents = await file.readAsString();
  // print(contents);

  // final file = File('assets/text.txt');
  // final stream = file.openRead();
  // stream.listen(
  //   (data) {
  //     print(data.length);
  //   },
  // );

  final file = File('assets/text.txt');
  final stream = file.openRead();
  await for (var data in stream) {
    print(data.length);
  }

}
*/

/*
// import 'dart:io';
void main() async {
  final myStream = Stream<int>.periodic(
    Duration(seconds: 1),
    (value) => value
    ).take(10);

    await for(var number in myStream){
      print(number);
      // stdout.write(number);
    }
  }
  */

// Challenges

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:isolate';

/*
Future<void> main() async {
  /// Because of the asynchronous nature of these challenges. The printed
  /// results will be easier to follow if you only uncomment the method you
  /// want to examine.
  //challenge1();
  await challenge2();
  // await challenge3();
  // await challenge4();
}
*/

/*
/// Challenge 1:
///
/// This is a fun one and will test how well you understand how Dart handles
/// asynchronous tasks. In what order will Dart print the text with the
/// following `print` statements? Why?
void main() {
  print('1 synchronous');
  Future(() => print('2 event queue')).then(
    (value) => print('3 synchronous'),
  );
  Future.microtask(() => print('4 microtask queue'));
  Future.microtask(() => print('5 microtask queue'));
  Future.delayed(
    Duration(seconds: 1),
    () => print('6 event queue'),
  );
  Future(() => print('7 event queue')).then(
    (value) => Future(() => print('8 event queue')),
  );
  Future(() => print('9 event queue')).then(
    (value) => Future.microtask(
      () => print('10 microtask queue'),
    ),
  );
  print('11 synchronous');
}

/// Try to answer before checking. If you were right, give yourself a well
/// deserved pat on the back!
///
///
/// Answer:
///
/// 1 synchronous
/// 11 synchronous
/// 4 microtask queue
/// 5 microtask queue
/// 2 event queue
/// 3 synchronous
/// 7 event queue
/// 9 event queue
/// 10 microtask queue
/// 8 event queue
/// 6 event queue
///
/// Synchronous tasks always run first so that explains 1 and 11. Here is
/// what the event queue and the microtask queue look like after 11 is finished:
///
/// Event queue: 2, 7, 9
/// Microtask queue: 4, 5
/// (Numbers on the left indicate first in line.)
///
/// The microtask queue is always emptied before anything in the event queue
/// gets a chance, so that explains 4 and 5.
///
/// After that 2 gets its turn as first in the event queue. Anything in the
/// `then` callback gets run synchronously immediately after the event queue
/// item so that examplains 3.
///
/// 7 is next in the event queue but when it finishes the `then` callback adds
/// 8 to the end of the event queue. Here is what the queues look like now:
///
/// Event queue: 9, 8
/// Microtask queue:
///
/// Next in line is 9 and when it finishes it adds 10 to the microtask queue:
///
/// Event queue: 8
/// Microtask queue: 10
///
/// Since microtasks take priority it cuts the line in front of 8. After that
/// 8 can go.
///
/// At the end of the one second delay, 6 gets put in the event queue, and since
/// there is no one else in any line, 6 gets run.
///
/// There is no more synchronous code, all the queues are empty, and all the
/// futures have completed, so the program terminates.
/// Challenge 2: Care to make a comment?
///
/// The following link returns a JSON list of comments:
///
/// https://jsonplaceholder.typicode.com/comments
///
/// Create a `Comment` data class and convert the raw JSON to a Dart list of
/// type `List<Comment>`.
*/

/*
//challenge:2
Future<void> main() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
  final commentList = <Comment>[];
  try {
    final response = await http.get(url);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJsonString = response.body;
      final jsonList = jsonDecode(rawJsonString);
      for (var element in jsonList) {
        final comment = Comment.fromJson(element);
        commentList.add(comment);
      }
    } else {
      throw HttpException('$statusCode');
    }
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }

  print('Comment list length: ${commentList.length}');
}

class Comment {
  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory Comment.fromJson(Map<String, Object?> jsonMap) {
    return Comment(
      postId: jsonMap['postId'] as int,
      id: jsonMap['id'] as int,
      name: jsonMap['name'] as String,
      email: jsonMap['email'] as String,
      body: jsonMap['body'] as String,
    );
  }

  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  @override
  String toString() {
    return '$postId, $id, $name, $email, $body';
  }
}
*/

/*
/// Challenge 3: Data stream
///
/// The following code allows you to stream content from the given URL:
///
/// ```
/// final url = Uri.parse('https://raywenderlich.com');
/// final client = http.Client();
/// final request = http.Request('GET', url);
/// final response = await client.send(request);
/// final stream = response.stream;
/// ```
///
/// Your challenge is to transform the stream from bytes to strings
/// and see how many bytes each data chunk is. Add error handling,
/// and when the stream is finished, close the client.

Future<void> main() async {
  final url = Uri.parse('https://raywenderlich.com');
  final client = http.Client();
  try {
    final request = http.Request('GET', url);
    final response = await client.send(request);
    final stream = response.stream;
    await for (var data in stream.transform(utf8.decoder)) {
      print(data.length);
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    client.close;
  }
}
*/

/// Challenge 4: Fibonacci from afar
///
/// In Challenge 4 of Chapter 4, you wrote some code to calculate the *n*th
/// Fibonacci number. Now repeat that challenge but run the code in a separate
/// isolate. Pass the value of _n_ to the new isolate as an argument, and send
/// the result back to the main isolate.

Future<void> main() async {
  final receivePort = ReceivePort();
  final n = 10;
  final arguments = {
    'sendPort': receivePort.sendPort,
    'n': n,
  };

  final isolate = await Isolate.spawn(
    fibonacci,
    arguments,
  );

  receivePort.listen((message) {
    print('Fibonacci number $n is $message.');
    receivePort.close();
    isolate.kill();
  });
}

void fibonacci(Map<String, Object> arguments) {
  final sendPort = arguments['sendPort'] as SendPort;
  final n = arguments['n'] as int;
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < n) {
    final next = current + previous;
    previous = current;
    current = next;
    done += 1;
  }
  sendPort.send(current);
}
