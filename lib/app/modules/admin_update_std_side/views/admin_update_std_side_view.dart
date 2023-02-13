import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/admin_update_std_side_controller.dart';

class AdminUpdateStdSideView extends GetView<AdminUpdateStdSideController> {
  const AdminUpdateStdSideView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AdminUpdateStdSideView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AdminUpdateStdSideView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
