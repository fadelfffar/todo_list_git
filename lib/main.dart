import 'package:flutter/material.dart';
import 'package:todo_list_git/pages/create_schedule.dart';
import 'package:todo_list_git/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home-page',
      routes: {
        'home-page': (context) =>  const HomePage(),
        'create-schedule': (context) => const CreateSchedule(),
      },
    );
  }
}
