import 'package:get/get.dart';

import '../modules/admin_insert_std_side/bindings/admin_insert_std_side_binding.dart';
import '../modules/admin_insert_std_side/views/admin_insert_std_side_view.dart';
import '../modules/admin_option_side/bindings/admin_option_side_binding.dart';
import '../modules/admin_option_side/views/admin_option_side_view.dart';
import '../modules/admin_search_std_side/bindings/admin_search_std_side_binding.dart';
import '../modules/admin_search_std_side/views/admin_search_std_side_view.dart';
import '../modules/admin_side/bindings/admin_side_binding.dart';
import '../modules/admin_side/views/admin_side_view.dart';
import '../modules/admin_update_std_side/bindings/admin_update_std_side_binding.dart';
import '../modules/admin_update_std_side/views/admin_update_std_side_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/student_side/bindings/student_side_binding.dart';
import '../modules/student_side/views/student_side_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.STUDENT_SIDE,
      page: () => const StudentSideView(),
      binding: StudentSideBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_SIDE,
      page: () => const AdminSideView(),
      binding: AdminSideBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_OPTION_SIDE,
      page: () => const AdminOptionSideView(),
      binding: AdminOptionSideBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_INSERT_STD_SIDE,
      page: () => const AdminInsertStdSideView(),
      binding: AdminInsertStdSideBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_UPDATE_STD_SIDE,
      page: () => const AdminUpdateStdSideView(),
      binding: AdminUpdateStdSideBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_SEARCH_STD_SIDE,
      page: () => const AdminSearchStdSideView(),
      binding: AdminSearchStdSideBinding(),
    ),
  ];
}
