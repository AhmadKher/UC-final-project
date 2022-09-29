// ignore_for_file: equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:hchat/home_page.dart';
import 'package:hchat/pages/welcome_page.dart';
import 'package:hchat/screens/chat_screen.dart';
import 'package:hchat/screens/notes_home_screen.dart';
import 'package:hchat/screens/registration_screen.dart';
import 'package:hchat/screens/signin_screen.dart';
import 'screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HACK CHAT',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: WelcomePage(),
        // initialRoute: _auth.currentUser != null
        // ? WelcomePage.screenRoute
        // : WelcomeScreen.screenRoute,
        routes: {
          WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
          SignInScreen.screenRoute: (context) => SignInScreen(),
          RegistrationScreen.screenRoute: (context) => RegistrationScreen(),
          ChatScreen.screenRoute: (context) => ChatScreen(),
          WelcomePage.screenRoute: (context) => WelcomePage(),
          BottomNavScreen.screenRoute: (context) => BottomNavScreen(),
          // HomeScreen.screenRoute: (context) => HomeScreen(),
        });
  }
}
