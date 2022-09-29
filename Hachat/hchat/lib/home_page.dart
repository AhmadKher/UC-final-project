import 'package:flutter/material.dart';
import 'package:hchat/pages/welcome_page.dart';
import 'package:hchat/screens/chat_screen.dart';
import 'package:hchat/screens/notes_home_screen.dart';
// import 'package:hchat/screens/note_home_screen.dart';
import 'package:hchat/screens/tools_screen.dart';
import 'package:hchat/screens/welcome_screen.dart';
// import 'package:hchat/screens/account_screen.dart';
// import 'package:hchat/screens/home_screen.dart';
// import 'package:hchat/screens/payment_gateway_screen.dart';
// import 'package:flutterfire_ui/auth.dart';

class BottomNavScreen extends StatefulWidget {
  static const String screenRoute = 'home page';

  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  static List<Widget> _screens = <Widget>[
    // 1 2 3
    ChatScreen(),
    WebViewExample(),
    HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          _onItemTapped(index);
        },
        selectedIndex: _selectedIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.chat),
            label: 'chat',
          ),
          NavigationDestination(
            icon: Icon(Icons.topic),
            label: 'tools',
          ),
          NavigationDestination(
            icon: Icon(Icons.archive),
            label: 'archive',
          ),
        ],
      ),
    );
  }
}
