import 'package:get/get.dart';
import 'package:reserva_de_canchas/app/data/model/Register/register_response.dart';
import 'package:reserva_de_canchas/app/data/model/Register/register_request.dart';
import 'package:reserva_de_canchas/app/data/provider/api_provider.dart';

abstract class RegisterRepository {
  static final getConnect = GetConnect();

  static Future<RegisterResponse> register(RegisterRequest request) async {
    Response<dynamic> req;

    try {
      req = await getConnect.post(ApiProvider.register, request.toJson());
      return RegisterResponse.fromJson(req.body);

    } catch (e) {
      throw Exception('Fallo al enviar la petición de registro');
    }
  }
}
