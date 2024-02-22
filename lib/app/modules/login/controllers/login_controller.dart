import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserva_de_canchas/app/core/themes/custom_snackbar_theme.dart';
import 'package:reserva_de_canchas/app/data/model/login/login_request.dart';
import 'package:reserva_de_canchas/app/data/service/login_service.dart';
import 'package:reserva_de_canchas/app/routes/app_pages.dart';

class LoginController extends GetxController with StateMixin {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void onInit() {
    intializeController();
    change(true, status: RxStatus.success());

    super.onInit();
  }

  void intializeController() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void handleLogin() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      CustomSnackbar.failedSnackbar(
        title: 'Error',
        message: 'Por favor, rellene todos los campos',
      );
      return;
    }

    final inputtedEmail = emailController.text;
    final inputtedPassword = passwordController.text;

    final loginRequest = LoginRequest(
      email: inputtedEmail,
      password: inputtedPassword,
    );

    change(false, status: RxStatus.loading());
    final isValid = await LoginService.login(loginRequest);
    change(true, status: RxStatus.success());

    if (isValid) {
      Get.offAllNamed(Routes.HOME, arguments: inputtedEmail);
      return;
    }

    CustomSnackbar.failedSnackbar(
      title: 'Error',
      message: 'Correo o contraseña incorrectos',
    );
  }
}
