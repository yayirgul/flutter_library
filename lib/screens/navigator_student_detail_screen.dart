// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_library/models/student_model.dart';

class NavigatorStudentDetailScreen extends StatelessWidget {
  final Students student;
  const NavigatorStudentDetailScreen({required this.student, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var selected = ModalRoute.of(context)!.settings.arguments as Students;
    print("Seçilen Öğrenci ::::::::: ${selected.surname}");

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '.pushNamed() Arguments Detail',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
            child: Column(
          children: [
            Text('ID : ${student.id.toString()}'),
            Text(student.name),
            Text(student.surname)
          ],
        )),
      ),
    );
  }
}
