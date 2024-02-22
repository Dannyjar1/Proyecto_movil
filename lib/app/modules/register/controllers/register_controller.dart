import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserva_de_canchas/app/core/themes/custom_snackbar_theme.dart';
import 'package:reserva_de_canchas/app/data/model/Register/register_request.dart';
import 'package:reserva_de_canchas/app/data/service/register_service.dart';
import 'package:reserva_de_canchas/app/routes/app_pages.dart';

class RegisterController extends GetxController with StateMixin {
  late final TextEditingController fullNameController;
  late final TextEditingController phoneNumberController;
  late final TextEditingController emailController;
  late final TextEditingController usernameController;
  late final TextEditingController passwordController;

  @override
  void onInit() {
    initializeController();

    change(true, status: RxStatus.success());

    super.onInit();
  }

  void initializeController() {
    fullNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    emailController = TextEditingController();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  bool isAnyEmptyField() {
    return fullNameController.text.isEmpty ||
        phoneNumberController.text.isEmpty ||
        emailController.text.isEmpty ||
        usernameController.text.isEmpty ||
        passwordController.text.isEmpty;
  }

  bool isAllFieldValid() {
    final isValidPhoneNumber =
        int.tryParse(phoneNumberController.text) != null &&
            phoneNumberController.text.length == 10;
    final isValidEmail = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(emailController.text);

    final isUsernameContainSpace = usernameController.text.contains(' ');


    return isValidEmail && isValidPhoneNumber &&  !isUsernameContainSpace;
  }

  void handleRegister() async {
    if (isAnyEmptyField()) {
      CustomSnackbar.failedSnackbar(
        title: 'Registro Fallido',
        message: 'Por favor, rellene todos los campos',
      );
      return;
    }

    if (!isAllFieldValid()) {
      CustomSnackbar.failedSnackbar(
        title: 'Registro Fallido',
        message: 'Por favor, ingrese un correo, número de teléfono y nombre de usuario válidos',
      );
      return;
    }


    final name = fullNameController.text;
    final phoneNumber = phoneNumberController.text;
    final email = emailController.text;
    final username = usernameController.text;
    final password = passwordController.text;

    final request = RegisterRequest(
      name: name,
      phoneNumber: phoneNumber,
      email: email,
      username: username,
      password: password,
    );

    change(false, status: RxStatus.loading());
    final isSuccess = await RegisterService.register(request);
    change(true, status: RxStatus.success());

    if (isSuccess) {
      CustomSnackbar.successSnackbar(
        title: 'Registro Exitoso',
        message: 'Redirigiendo a la página de inicio de sesión...',
      );

      Future.delayed(const Duration(seconds: 2), () {
        Get.offNamed(Routes.LOGIN, arguments: true);
      });
      return;
    }

    CustomSnackbar.failedSnackbar(
      title: 'Registro Fallido',
      message: 'Ha ocurrido un error inesperado, por favor intente de nuevo',
    );
  }
}
