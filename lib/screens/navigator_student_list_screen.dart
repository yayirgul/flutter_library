// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_library/models/student_model.dart';

class NavigatorStudentListScreen extends StatelessWidget {
  const NavigatorStudentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int students = ModalRoute.of(context)!.settings.arguments as int;
    print('Öğrenci Sayısı : $students');

    List<Students> fullStudents = List.generate(
        students,
        (index) => Students(
            index + 1, 'Adı : A-${index + 1}', 'Soyadı : S-${index + 1}'));

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '.pushNamed() Arguments',
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
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading:
                CircleAvatar(child: Text(fullStudents[index].id.toString())),
            title: Text(fullStudents[index].name),
            subtitle: Text(fullStudents[index].surname),
            onTap: () {
              var argumentSselected = fullStudents[index];
              Navigator.pushNamed(context, '/NavigatorStudentDetailScreen',
                  arguments: argumentSselected);
            },
          );
        },
      ),
    );
  }
}
