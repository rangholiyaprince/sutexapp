import 'package:get/get.dart';

import '../controllers/admin_option_side_controller.dart';

class AdminOptionSideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminOptionSideController>(
      () => AdminOptionSideController(),
    );
  }
}
