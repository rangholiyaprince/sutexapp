import 'package:get/get.dart';

import '../controllers/admin_side_controller.dart';

class AdminSideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminSideController>(
      () => AdminSideController(),
    );
  }
}
