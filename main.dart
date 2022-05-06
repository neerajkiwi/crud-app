import 'package:flutter/material.dart';
import 'package:login_sharedprefernece/bottomnavigator.dart';
import 'package:provider/provider.dart';
import 'package:login_sharedprefernece/providers/user_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => UserProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const LoginScreen(),
      home: const Splash(),
    );
  }
}
