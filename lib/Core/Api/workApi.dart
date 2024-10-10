import 'package:herhealthconnect/Core/Helpers/Model/get_all_professiona_response_model/get_all_professiona_response_model.dart';
import 'package:herhealthconnect/Core/Network/Network_Service.dart';
import 'package:herhealthconnect/Core/Network/UrlPath.dart';
import 'package:injectable/injectable.dart';
import '../CoreFolder/app.locator.dart';
import '../CoreFolder/app.logger.dart';

@lazySingleton
class WorkApi {
  final logger = getLogger('AuthApi');
  final _service = locator<NetworkService>();

  Future<GetAllProfessionaResponseModel> getProfessional() async {
    try {
      final response = await _service.call(
          UrlConfig.getProfessional, RequestMethod.get);
      return GetAllProfessionaResponseModel.fromJson(response.data);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }
}
