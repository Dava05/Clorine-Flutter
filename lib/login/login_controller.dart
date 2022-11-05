import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/common/user_global_controller.dart';

class LoginController extends GetxController {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  UserGlobalController userGlobalController = Get.find();

  void redirectToHome() {
    Get.offAllNamed("menu");
  }

  void submit() {
    if (txtEmail.text == "tata@gmail.com" && txtPassword.text == "1234") {
      userGlobalController.nama = "anggita";
      userGlobalController.namaLengkap = "Anggita rani";
      userGlobalController.email = "tata@gmail.com";
      userGlobalController.pekerjaan = "Sales produk";
      userGlobalController.hobi = "Nonton";
      userGlobalController.saveSession();

      Get.snackbar("Sukses", "Login Berhasil!");
      redirectToHome();
    } else {
      Get.snackbar("Error", "Login Gagal!");
    }
  }
}
