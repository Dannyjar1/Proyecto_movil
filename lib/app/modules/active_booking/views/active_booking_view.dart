import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reserva_de_canchas/app/global_widgets/custom_white_appbar.dart';

import '../../../global_widgets/loading_spinkit.dart';
import '../controllers/active_booking_controller.dart';
import '../../../global_widgets/user_reservations/list_user_reservation_builder.dart';

class ActiveBookingView extends GetView<ActiveBookingController> {
  const ActiveBookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customWhiteAppBar('Canchas Reservadas'),
      body: SmartRefresher(
        controller: controller.refreshController,
        onRefresh: controller.handleRefresh,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Center(
              child: controller.obx(
                (state) => ListUserReservationBuilder(
                  reservations: controller.bookedFieldsModel,
                  isUsingCustomActionButton: true,
                  editFunction: controller.handleEditReservation,
                  cancelFunction: controller.handleCancelReservation,
                ),
                onLoading: const LoadingSpinkit(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
