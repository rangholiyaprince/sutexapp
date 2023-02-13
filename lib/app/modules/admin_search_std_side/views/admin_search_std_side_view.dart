import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/admin_search_std_side_controller.dart';

class AdminSearchStdSideView extends GetView<AdminSearchStdSideController> {
  const AdminSearchStdSideView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AdminSearchStdSideView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AdminSearchStdSideView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
