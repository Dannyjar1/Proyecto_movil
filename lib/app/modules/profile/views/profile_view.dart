import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:reserva_de_canchas/app/global_widgets/custom_white_appbar.dart';
import 'package:reserva_de_canchas/app/global_widgets/loading_spinkit.dart';

import '../controllers/profile_controller.dart';
import '../widgets/profile_builder.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customWhiteAppBar('Mi Perfil'),
      body: controller.obx(
        (state) => const ProfileBuilder(),
        onLoading: const LoadingSpinkit(),
      ),
    );
  }
}
