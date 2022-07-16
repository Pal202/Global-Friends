import 'package:flutter/material.dart';
import 'package:global_friends/screens/chat_page.dart';
import 'package:global_friends/screens/notification_page.dart';
import 'package:global_friends/screens/search_page.dart';
import 'home_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final _screens = [Home(), ChatBox(), Notifications(), UserProfile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(children: [
          navigationItems(Icons.home, 0),
          navigationItems(Icons.chat, 1),
          navigationItems(null, -1),
          navigationItems(Icons.notifications, 2),
          navigationItems(Icons.person, 3),
        ]),
      ),
      floatingActionButton: Container(
        height: 65,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                opaque: false,
                pageBuilder: ((context, animation, secondaryAnimation) =>
                    FindFriends()),
              ),
            );
          },
          backgroundColor: Colors.black,
          elevation: 15,
          child: const Icon(Icons.search),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  Widget navigationItems(IconData? icon, int index) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          _selectedIndex = index;
        });
      }),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 5,
        child: icon != null
            ? Icon(
                icon,
                size: 30,
                color: _selectedIndex == index
                    ? Color.fromARGB(255, 45, 74, 238)
                    : Colors.black,
              )
            : Container(),
      ),
    );
  }
}
