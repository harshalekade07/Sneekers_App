import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/splash_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCq6Otd8nxd7L7ZXd3XP8nHiLb5T8q32HE",
        appId: "1:242475799966:android:734b7ac39b73c9997cb28f",
        messagingSenderId: "242475799966",
        projectId: "snikerapp-beef6"), 
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  
  @override
  Widget build(BuildContext context) {
    return  const Nike();
  }
}


