import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../data/theme/colors.dart';
import '../../../data/theme/styles.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/primary_button.dart';
import '../controllers/admin_option_side_controller.dart';

class AdminOptionSideView extends GetView<AdminOptionSideController> {
  const AdminOptionSideView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AdminOptionSideView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            Text(
              "Whose data do you want to edit?",
              style: Styles.bold(22, AppColors.primary),
            ),
            Obx(() => Center(
                  child: RadioListTile(
                    title: const Text("Student"),
                    value: "Student",
                    groupValue: controller.studValue,
                    activeColor: AppColors.primary,
                    onChanged: (value) {
                      controller.studValue = value ?? '';
                    },
                  ),
                )),
            Obx(() => RadioListTile(
                  title: const Text("Staff"),
                  value: "Staff",
                  groupValue: controller.studValue,
                  activeColor: AppColors.primary,
                  onChanged: (value) {
                    controller.studValue = value ?? '';
                  },
                )),
            const SizedBox(
              height: 30,
            ),
            Text(
              "What do you want to do?",
              style: Styles.bold(22, AppColors.primary),
            ),
            SizedBox(
              height: 20.h,
            ),
            Obx(() => Row(
                  children: [
                    Radio(
                      value: "Insert",
                      groupValue: controller.iudsData,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.primary),
                      onChanged: (value) {
                        controller.iudsData = value ?? '';
                      },
                    ),
                    const Text("Insert"),
                    Radio(
                      value: "Update",
                      groupValue: controller.iudsData,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.primary),
                      onChanged: (value) {
                        controller.iudsData = value ?? '';
                      },
                    ),
                    const Text("Update"),
                    Radio(
                      value: "Delete",
                      groupValue: controller.iudsData,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.primary),
                      onChanged: (value) {
                        controller.iudsData = value ?? '';
                      },
                    ),
                    const Text("Delete"),
                    Radio(
                      value: "Search",
                      groupValue: controller.iudsData,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.primary),
                      onChanged: (value) {
                        controller.iudsData = value ?? '';
                      },
                    ),
                    const Text("Search"),
                  ],
                )),
            SizedBox(
              height: 100.h,
            ),
            PrimaryButton(
                onPressed: () {
                  if (controller.studValue == "Student" &&
                      controller.iudsData == "Insert") {
                    Get.toNamed(Routes.ADMIN_INSERT_STD_SIDE);
                  } else if (controller.studValue == "Student" &&
                      controller.iudsData == "Update") {
                    Get.toNamed(Routes.ADMIN_UPDATE_STD_SIDE);
                  } else if (controller.studValue == "Student" &&
                          controller.iudsData == "Delete" ||
                      controller.iudsData == "Search") {
                    Get.toNamed(Routes.ADMIN_SEARCH_STD_SIDE);
                  }
                },
                child: Text(
                  "Continue",
                  style: Styles.bold(18, AppColors.white),
                ))
          ],
        ),
      ),
    );
  }
}
