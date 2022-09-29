import 'package:flutter/material.dart';

import '../widgets/my_button.dart';
import 'registration_screen.dart';
import 'signin_screen.dart';
// import 'sigin_screen.dart';
// import 'package:hchat/screens/registration_screen.dart';
// import 'package:hchat/screens/sigin_screen.dart';
// import 'package:hchat/widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to HACK CHAT"),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  child: Image.network(
                      "https://c.tenor.com/ofYCY_OJQ1kAAAAd/hacker-hack.gif"),
                ),
                Container(
                  height: 50,
                  // child: Image.network(
                  //     "https://c.tenor.com/ofYCY_OJQ1kAAAAd/hacker-hack.gif"),
                ),
                Text(
                  'HACK CHAT',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            MyButton(
              color: Colors.grey,
              title: 'Sign in',
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.screenRoute);
              },
            ),
            MyButton(
              color: Colors.grey,
              title: 'register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.screenRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
