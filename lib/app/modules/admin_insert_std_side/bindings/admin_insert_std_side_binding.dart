import 'package:get/get.dart';

import '../controllers/admin_insert_std_side_controller.dart';

class AdminInsertStdSideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminInsertStdSideController>(
      () => AdminInsertStdSideController(),
    );
  }
}
