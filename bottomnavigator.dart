
 import 'package:flutter/material.dart';
import 'package:login_sharedprefernece/home.dart';
import 'package:login_sharedprefernece/profile.dart';
import 'package:login_sharedprefernece/users_view.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
 int index=0;
  final screens=[
    const home(),
    const UsersView(),
    const profile()
  ];
 void onItemTapped(int ind) {
   setState(() {
     index = ind;
   });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
  BottomNavigationBarItem(icon:Icon(Icons.home),

    label: 'Home',
    backgroundColor: Colors.lightBlue

  ),
          BottomNavigationBarItem(icon:Icon(Icons.verified_user),
              label: 'user',
              backgroundColor: Colors.lightBlue

          ),
          BottomNavigationBarItem(icon:Icon(Icons.person),
              label: 'profile',
              backgroundColor: Colors.lightBlue

          ),



        ],
        currentIndex: index,
        onTap: onItemTapped,

      ),
    );
  }
}
