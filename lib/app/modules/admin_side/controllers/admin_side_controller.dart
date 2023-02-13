import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminSideController extends GetxController {
  //TODO: Implement AdminSideController
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _obsecureText = true.obs;
  bool get obsecureText => _obsecureText.value;
  set obsecureText(bool value) => _obsecureText.value = value;

  final _count = 0.obs;
  int get count => _count.value;
  set count(int value) => _count.value = value;

  final _isEmailValid = true.obs;
  bool get isEmailValid => _isEmailValid.value;
  set isEmailValid(bool value) => _isEmailValid.value = value;

  final _isPasswordValid = true.obs;
  bool get isPasswordValid => _isPasswordValid.value;
  set isPasswordValid(bool value) => _isPasswordValid.value = value;

  final _errorMessage = ''.obs;
  String get errorMessage => _errorMessage.value;
  set errorMessage(String value) => _errorMessage.value = value;

  final _signInButtonIsEnabled = false.obs;
  bool get signInButtonIsEnabled => _signInButtonIsEnabled.value;
  set signInButtonIsEnabled(bool value) => _signInButtonIsEnabled.value = value;

  final formKey = GlobalKey<FormState>();

  void passwordVisibilityButtonClicked() {
    obsecureText = !obsecureText;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      isEmailValid = false;
      errorMessage = "Please enter an email address";
      return "";
    } else if (!(value.isEmail)) {
      errorMessage = "Please enter a valid email address.";
      isEmailValid = false;
      return "";
    }
    isEmailValid = true;
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      isPasswordValid = false;
      return "";
    }
    isPasswordValid = true;
    return null;
  }

  void checkSignInButtonIsEnabled(String value) {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      signInButtonIsEnabled = true;
    } else {
      signInButtonIsEnabled = false;
    }
  }
}
