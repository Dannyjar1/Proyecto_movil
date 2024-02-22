import 'package:get/get.dart';
import 'package:reserva_de_canchas/app/data/model/login/login_request.dart';
import 'package:reserva_de_canchas/app/data/model/login/login_response.dart';
import 'package:reserva_de_canchas/app/data/provider/api_provider.dart';

abstract class LoginRepository {
  static final getConnect = GetConnect();

  static Future<LoginResponse> login(LoginRequest request) async {
    Response<dynamic> req;
    try {
      req = await getConnect.post(ApiProvider.login, request.toJson());
    } catch (e) {
      throw Exception('Fallo al enviar la petición de login');
    }

    return LoginResponse.fromJson(req.body);
  }
}
