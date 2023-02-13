import 'package:get/get.dart';

import '../controllers/admin_update_std_side_controller.dart';

class AdminUpdateStdSideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminUpdateStdSideController>(
      () => AdminUpdateStdSideController(),
    );
  }
}
