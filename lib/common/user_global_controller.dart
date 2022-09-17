import 'package:get/get.dart';

class UserGlobalController extends GetxController {
  String? fullname;
  String? username;
  String? email;
  String? hobi;
  String? pekerjaan;

  @override
  void onInit() {
    print("UserGlobalController diinisasi!");
    super.onInit();
  }
}
