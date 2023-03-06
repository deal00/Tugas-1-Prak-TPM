import 'package:flutter/material.dart';
import 'package:tugas1/login_page.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return const MaterialApp(
           home: const LoginPage(),
         );
    }
}