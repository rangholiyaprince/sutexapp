import 'package:get/get.dart';

import '../controllers/admin_search_std_side_controller.dart';

class AdminSearchStdSideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminSearchStdSideController>(
      () => AdminSearchStdSideController(),
    );
  }
}
