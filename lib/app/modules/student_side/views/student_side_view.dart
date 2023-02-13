import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/student_side_controller.dart';

class StudentSideView extends GetView<StudentSideController> {
  const StudentSideView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StudentSideView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StudentSideView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
