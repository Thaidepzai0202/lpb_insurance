import 'package:injectable/injectable.dart';
import 'package:lpb_insurance/data/data_source/local/local_storage.dart';
import 'package:lpb_insurance/data/data_source/services/api_service.dart';
import 'package:lpb_insurance/domain/repositories/sign_up_repository.dart';

import '../models/request/login_request.dart';

@Injectable(as: SignUpRepository)
class SignUpRepositoryImpl implements SignUpRepository {
  final ApiService _apiService;
  final LocalStorage _localStorage;

  SignUpRepositoryImpl(
      {required ApiService apiService, required LocalStorage localStorage})
      : _apiService = apiService,
        _localStorage = localStorage;

  @override
  Future signUp({String? userName, String? password}) async {
    final request = LoginRequest(username: userName, password: password);

    return _apiService.login(request);
  }
}
