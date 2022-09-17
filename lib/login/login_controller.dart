import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:prof_card/common/user_global_controller.dart';

class LoginController extends GetxController {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtfullname = TextEditingController();
  TextEditingController txtusername = TextEditingController();
  TextEditingController txthobi = TextEditingController();
  TextEditingController txtpekerjaan = TextEditingController();
  UserGlobalController userGlobalController = Get.find();

  void submit() {
    userGlobalController.fullname = txtfullname.text.toString();
    userGlobalController.username = txtusername.text.toString();
    userGlobalController.email = txtEmail.text.toString();
    userGlobalController.hobi = txthobi.text.toString();
    userGlobalController.pekerjaan = txtpekerjaan.text.toString();
    Get.snackbar('Selamat datang', 'login berhasil');
    Get.offNamed('menu');
  }
}
