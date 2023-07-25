// ignore_for_file: must_be_immutable, non_constant_identifier_names, depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library/models/student_model.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});

  List<Students> students = List.generate(
      1000,
      (index) =>
          Students(index + 1, 'Adı : ${index + 1}', 'Soyadı : ${index + 2}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Liste Görünümü')),
      body: listview_seperrated(),
    );
  }

  ListView listview_seperrated() {
    return ListView.separated(
        itemBuilder: (context, index) {
          var student = students[index];
          return Card(
            color: index % 2 == 0
                ? Colors.deepPurple.shade100
                : Colors.deepPurple.shade200,
            child: ListTile(
              title: Text(student.name),
              subtitle: Text(student.surname),
              leading: CircleAvatar(
                  child: Text(
                student.id.toString(),
              )),
              onTap: () {
                if (index % 2 == 0) {
                  EasyLoading.instance.backgroundColor = Colors.red;
                  EasyLoading.instance.textColor = Colors.white;
                } else {
                  EasyLoading.instance.backgroundColor =
                      Colors.deepPurpleAccent;
                  EasyLoading.instance.textColor = Colors.white;
                }
                EasyLoading.showToast('Tıklanan Sayı : ${index + 1}',
                    duration: const Duration(seconds: 3),
                    dismissOnTap: true,
                    toastPosition: EasyLoadingToastPosition.bottom);
              },
              onLongPress: () {
                dialog_alert(context, student);
              },
            ),
          );
        },
        separatorBuilder: (context, index) {
          var newIndex = index + 1;
          if (newIndex % 4 == 0) {
            return const Divider(
                indent: 20,
                endIndent: 20,
                thickness: 2,
                color: Color.fromARGB(255, 137, 94, 211));
          }
          return const SizedBox();
        },
        itemCount: students.length);
  }

  ListView listview_classic() {
    return ListView(
      children: students
          .map((student) => ListTile(
                title: Text(student.name),
                subtitle: Text(student.surname),
                leading: CircleAvatar(child: Text(student.id.toString())),
              ))
          .toList(),
    );
  }

  void dialog_alert(BuildContext context, Students students) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(students.toString()),
          content: SingleChildScrollView(
            child: ListBody(
                children: [Text('Lorem ' * 100), Text('Ipsum ' * 100)]),
          ),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('KAPAT')),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('TAMAM'))
              ],
            )
          ],
        );
      },
    );
  }
}
