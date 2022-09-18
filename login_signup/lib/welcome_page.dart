import 'package:flutter/material.dart';
import 'package:login_signup/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(child: Text('Home Page')),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Logout',
              onPressed: () {
                // Navigator.pop(context);
                AuthController.instance.logOut();
              },
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.deepPurpleAccent,
                  Colors.indigo,
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: w,
              height: h * 0.3,
              margin: EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/welcome.png"),
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                      ),
                    ),
                    Text(
                      email,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 100,),
            GestureDetector(
              onTap: (){
                AuthController.instance.logOut();
              },
              child: Container(
                width: w * 0.5,
                height: h * 0.08,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.deepPurpleAccent,
                      Colors.indigo,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30),
                  //     image: DecorationImage(
                  //       image: AssetImage(
                  //           "img/login.png"
                  //       ),
                  //       fit: BoxFit.cover,
                  //     )
                ),
                child: const Center(
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ));;
  }
}
