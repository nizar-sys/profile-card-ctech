import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:prof_card/common/user_global_controller.dart';

class HomeController extends GetxController {
  TextEditingController txtNama = TextEditingController();
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
}
