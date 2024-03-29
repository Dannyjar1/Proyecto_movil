import 'package:get/get.dart';
import 'package:reserva_de_canchas/app/data/enum/venue_category_enum.dart';
import 'package:reserva_de_canchas/app/data/model/venue/venue_response.dart';
import 'package:reserva_de_canchas/app/data/service/venue_service.dart';
import 'package:reserva_de_canchas/app/routes/app_pages.dart';

import '../../home/controllers/home_controller.dart';

class AllVenueController extends GetxController with StateMixin {
  late final List<VenueResponse> venues;
  var filteredVenues = <VenueResponse>[].obs;
  final homeController = Get.find<HomeController>();

  @override
  void onInit() {
    fetchData();

    super.onInit();
  }

  void toBookingFieldPage(VenueResponse venue) {
    if (homeController.dataUser == null) {
      return;
    }

    final arguments = {
      'infoVenue': venue,
      'isEditReservation': false,
      'transactionId': '',
    };

    Get.toNamed(Routes.BOOKING_FIELD, arguments: arguments);
  }

  void initializeFilteredVenues() {
    filteredVenues.value = venues
        .where((venue) => venue.category == VenueCategory.footbal)
        .toList();
  }

  void fetchData() async {
    change(false, status: RxStatus.loading());
    venues = await VenueService.getVenues();

    initializeFilteredVenues();
    change(true, status: RxStatus.success());
  }

  void updateFilteredVenuesByCategory(VenueCategory category) {
    filteredVenues.value =
        venues.where((venue) => venue.category == category).toList();
  }
}
