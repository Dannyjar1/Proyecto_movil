import 'package:reserva_de_canchas/app/data/model/venue/venue_response.dart';
import 'package:reserva_de_canchas/app/data/repository/venue_repository.dart';

abstract class VenueService {
  static Future<List<VenueResponse>> getVenues() async {
    return await VenueRepository.getVenues();
  }

  static Future<VenueResponse> getDetailVenue(String idVenue) async {
    return await VenueRepository.getDetailVenue(idVenue);
  }
}
