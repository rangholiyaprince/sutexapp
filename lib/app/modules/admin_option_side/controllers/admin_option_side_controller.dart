import 'package:get/get.dart';

class AdminOptionSideController extends GetxController {
  //TODO: Implement AdminOptionSideController

  final count = 0.obs;

  final _studValue = ''.obs;
  String get studValue => _studValue.value;
  set studValue(String value) => _studValue.value = value;

  final _iudsData = ''.obs;
  get iudsData => _iudsData.value;
  set iudsData(value) => _iudsData.value = value;

  void increment() => count.value++;
}
