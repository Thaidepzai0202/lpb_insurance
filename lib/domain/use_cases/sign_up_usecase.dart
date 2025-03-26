import 'package:injectable/injectable.dart';
import 'package:lpb_insurance/domain/repositories/sign_up_repository.dart';

@injectable
class SignUpUseCase {
  final SignUpRepository _signUpRepository;

  SignUpUseCase({required SignUpRepository signUpRepository})
      : _signUpRepository = signUpRepository;

  Future login({String? userName, String? password}) async {
    return _signUpRepository.signUp(userName: userName, password: password);
  }
}
