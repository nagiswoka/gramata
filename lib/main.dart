import 'package:flutter/material.dart';
import 'package:radish/main/wrapper.dart';
import 'package:radish/services/register.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'main/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Wrapper();
  }
}
