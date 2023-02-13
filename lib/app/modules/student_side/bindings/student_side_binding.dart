import 'package:get/get.dart';

import '../controllers/student_side_controller.dart';

class StudentSideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StudentSideController>(
      () => StudentSideController(),
    );
  }
}
