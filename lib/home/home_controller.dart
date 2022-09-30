import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prof_card/common/user_global_controller.dart';

class HomeController extends GetxController {
  TextEditingController txtNama = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtfullname = TextEditingController();
  TextEditingController txtusername = TextEditingController();
  TextEditingController txthobi = TextEditingController();
  TextEditingController txtpekerjaan = TextEditingController();
  var namaLengkap = "Muhamad Nizar";
  var nama = "emnizaar";
  var email = "nizarid04@gmail.com";
  var hobi = "ngoding";
  var pekerjaan = "nganggur / freelancer";
  UserGlobalController userGlobalController = Get.put(UserGlobalController());

  @override
  void onInit() {
    namaLengkap = userGlobalController.fullname ?? namaLengkap;
    nama = userGlobalController.username ?? nama;
    email = userGlobalController.email ?? email;
    hobi = userGlobalController.hobi ?? hobi;
    pekerjaan = userGlobalController.pekerjaan ?? pekerjaan;
    super.onInit();
  }

  void handleSaveChange() {
    userGlobalController.fullname = txtfullname.text.toString();
    userGlobalController.username = txtusername.text.toString();
    userGlobalController.email = txtEmail.text.toString();
    userGlobalController.hobi = txthobi.text.toString();
    userGlobalController.pekerjaan = txtpekerjaan.text.toString();
    Get.snackbar(
      'Berhasil!',
      "Menyimpan perubahan",
      colorText: Colors.white,
      backgroundColor: Colors.lightBlue,
      icon: const Icon(Icons.add_alert),
    );
    Get.offAndToNamed('menu');
  }
}
