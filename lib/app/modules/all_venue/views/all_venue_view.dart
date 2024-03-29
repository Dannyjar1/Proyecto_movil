import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:reserva_de_canchas/app/global_widgets/custom_white_appbar.dart';
import 'package:reserva_de_canchas/app/global_widgets/loading_spinkit.dart';

import '../controllers/all_venue_controller.dart';
import '../widgets/all_venue_content_builder.dart';
import '../widgets/content_category_filter.dart';
import '../widgets/header_category_filter.dart';

class AllVenueView extends GetView<AllVenueController> {
  const AllVenueView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customWhiteAppBar('Explorar Canchas'),
      body: controller.obx(
        (state) => SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              HeaderCategoryVenueBuilder(),
              ContentOfFilteredVenue(),
              AllVenueContentBuilder()
            ],
          ),
        ),
        onLoading: const LoadingSpinkit(),
      ),
    );
  }
}
