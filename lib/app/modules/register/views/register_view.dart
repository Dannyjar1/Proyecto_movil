import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:reserva_de_canchas/app/core/themes/font_themes.dart';
import 'package:reserva_de_canchas/app/core/values/colors.dart';
import 'package:reserva_de_canchas/app/global_widgets/custom_medium_button.dart';
import 'package:reserva_de_canchas/app/global_widgets/custom_textfield.dart';
import 'package:reserva_de_canchas/app/global_widgets/footer_text.dart';
import 'package:reserva_de_canchas/app/global_widgets/loading_spinkit.dart';

import '../../../core/values/assets.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  List<CustomTextField> regiterFields() {
    return [
      CustomTextField(
        textStyle: textfieldText,
        controller: controller.fullNameController,
        icon: Icons.account_circle,
        label: 'Nombre Completo',
        isObscure: false,
      ),
      CustomTextField(
        textStyle: textfieldText,
        controller: controller.phoneNumberController,
        icon: Icons.phone,
        label: 'Número de Teléfono',
        isObscure: false,
      ),
      CustomTextField(
        textStyle: textfieldText,
        controller: controller.emailController,
        icon: Icons.email,
        label: 'Correo Electrónico',
        isObscure: false,
      ),
      CustomTextField(
        textStyle: textfieldText,
        controller: controller.usernameController,
        icon: Icons.person,
        label: 'Nombre de Usuario',
        isObscure: false,
      ),
      CustomTextField(
        textStyle: textfieldText,
        controller: controller.passwordController,
        icon: Icons.lock,
        label: 'Contraseña',
        isObscure: true,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              heroRegisterImage,
              width: Get.width * 0.49,
            ),
            const SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Registro',
                style: headline4,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...regiterFields()
                .map(
                  (field) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: field,
                  ),
                )
                ,
            const SizedBox(
              height: 25,
            ),
            CustomMediumButton(
              label: 'Registrarse',
              onTap: controller.handleRegister,
              color: blue,
            ),
            SizedBox(
              height: 50,
              child: controller.obx(
                (state) => const SizedBox.shrink(),
                onLoading: const Center(
                  child: LoadingSpinkit(),
                ),
              ),
            ),
            FooterText(
              label: 'Ya estás registrado? ',
              labelWithFunction: 'Inicia Sesión',
              ontap: () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }
}
