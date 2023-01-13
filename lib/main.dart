import 'package:cehpoint/Addemployees.dart';
import 'package:cehpoint/Addtask.dart';
import 'package:cehpoint/taskdetails.dart';
import 'package:flutter/material.dart';

import 'EMPLOYEE1.dart';
import 'firstlogopage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'firstlogopage',
      routes: {
        'firstlogopage': (context) => Myfirstlogopage(),
        'Addemployees': (context) => MyAddEmployees(),
        'Addtask': (context) => MyAddTask(),
        'EMPLOYEE1': (context) => MyEMPLOYEE1(),
        'taskdetails': (context) => TASK_DETAILS(),
      },
    );
  }
}
