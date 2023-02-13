import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/admin_insert_std_side_controller.dart';

class AdminInsertStdSideView extends GetView<AdminInsertStdSideController> {
  const AdminInsertStdSideView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AdminInsertStdSideView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AdminInsertStdSideView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
