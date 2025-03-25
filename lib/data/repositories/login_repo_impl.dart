import 'package:injectable/injectable.dart';

import '../../domain/repositories/login_repository.dart';
import '../data_source/local/local_storage.dart';
import '../data_source/services/api_service.dart';
import '../models/request/login_request.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final ApiService _apiService;
  final LocalStorage _localStorage;

  LoginRepositoryImpl({
    required ApiService apiService,
    required LocalStorage localStorage,
  })  : _apiService = apiService,
        _localStorage = localStorage;

  @override
  Future login({String? userName, String? password}) async {
    final request = LoginRequest(username: userName, password: password);

    return _apiService.login(request);
  }
}
