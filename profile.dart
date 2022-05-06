import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('profile',style: TextStyle(fontSize: 45.0,fontWeight: FontWeight.bold),)),


    );
  }
}
