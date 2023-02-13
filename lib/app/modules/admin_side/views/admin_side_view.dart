import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../data/theme/colors.dart';
import '../../../data/theme/styles.dart';
import '../../../data/theme/theme_enums.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/primary_button.dart';
import '../controllers/admin_side_controller.dart';

class AdminSideView extends GetView<AdminSideController> {
  const AdminSideView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Admin'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "UserName",
                  style: Styles.medium(
                      16,
                      controller.isPasswordValid
                          ? AppColors.textDark
                          : AppColors.errorMessageColor,
                      font: FontFamily.roboto),
                  textAlign: TextAlign.center,
                ),
              ),
              Obx(() => CommonTextFiled(
                    controller: controller.emailController,
                    onChanged: controller.checkSignInButtonIsEnabled,
                    onPressed: controller.passwordVisibilityButtonClicked,
                    hintText: "UserName",
                  )),
              SizedBox(
                height: 15.h,
              ),
              Obx(
                () => Text(
                  "Password",
                  style: Styles.medium(
                      16,
                      controller.isPasswordValid
                          ? AppColors.textDark
                          : AppColors.errorMessageColor,
                      font: FontFamily.roboto),
                  textAlign: TextAlign.center,
                ),
              ),
              Obx(() => CommonTextFiled(
                    controller: controller.passwordController,
                    obscureText: controller.obsecureText,
                    onChanged: controller.checkSignInButtonIsEnabled,
                    hintText: "Enter Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                          controller.obsecureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: AppColors.black.withOpacity(0.4)),
                      onPressed: () {
                        controller.passwordVisibilityButtonClicked();
                      },
                    ),
                  )),
              SizedBox(
                height: 15.h,
              ),
              Obx(() => PrimaryButton(
                    hasPadding: false,
                    onPressed: () {
                      // controller.signIn();
                      Get.toNamed(Routes.ADMIN_OPTION_SIDE);
                    },
                    enabled: controller.signInButtonIsEnabled,
                    color: controller.signInButtonIsEnabled
                        ? AppColors.primary
                        : AppColors.primary.withOpacity(0.6),
                    child: Text(
                      "Sign In",
                      style: Styles.medium(
                        20,
                        controller.signInButtonIsEnabled
                            ? AppColors.white
                            : AppColors.white.withOpacity(0.4),
                        font: FontFamily.roboto,
                      ).copyWith(letterSpacing: -0.48.sp),
                    ),
                  )),
            ],
          ),
        ));
  }
}

class CommonTextFiled extends StatelessWidget {
  const CommonTextFiled({
    Key? key,
    required this.controller,
    this.obscureText = false,
    required this.onChanged,
    this.onPressed,
    this.hintText,
    this.validator,
    this.suffixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final bool obscureText;
  final Function(String)? onChanged;
  final Function()? onPressed;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  // final AdminSideController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Styles.regular(17, AppColors.black.withOpacity(0.4),
              font: FontFamily.roboto),
          suffixIcon: suffixIcon),
      onChanged: onChanged,
      style: Styles.regular(16, AppColors.textLight, font: FontFamily.roboto),
      textAlign: TextAlign.start,
      validator: validator,
    );
  }
}
