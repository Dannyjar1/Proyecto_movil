import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:reserva_de_canchas/app/core/themes/font_themes.dart';
import 'package:reserva_de_canchas/app/core/values/assets.dart';
import 'package:reserva_de_canchas/app/core/values/colors.dart';
import 'package:reserva_de_canchas/app/global_widgets/loading_spinkit.dart';
import 'package:reserva_de_canchas/app/routes/app_pages.dart';

import '../../../global_widgets/custom_medium_button.dart';
import '../../../global_widgets/footer_text.dart';
import '../controllers/login_controller.dart';
import '../../../global_widgets/custom_textfield.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * 0.15,
              ),
              Image.asset(heroLoginImage),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Iniciar Sesión',
                  style: headline4,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                textStyle: headline6,
                isObscure: false,
                controller: controller.emailController,
                label: 'Correo Electrónico',
                icon: Icons.person,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                textStyle: headline6,
                isObscure: true,
                controller: controller.passwordController,
                label: 'Contraseña',
                icon: Icons.lock,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomMediumButton(
                color: blue,
                label: 'Iniciar Sesión',
                onTap: controller.handleLogin,
              ),
              SizedBox(
                height: 50,
                child: controller.obx(
                  (state) => const SizedBox.shrink(),
                  onLoading: const LoadingSpinkit(),
                ),
              ),
              FooterText(
                label: 'No tienes una cuenta? ',
                labelWithFunction: 'Únete ahora',
                ontap: () => Get.toNamed(Routes.REGISTER),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
