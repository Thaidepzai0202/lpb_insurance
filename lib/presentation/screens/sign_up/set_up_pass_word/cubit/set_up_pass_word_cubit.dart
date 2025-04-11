import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lpb_insurance/domain/use_cases/sign_up_usecase.dart';
import 'package:meta/meta.dart';

part 'set_up_pass_word_state.dart';

@injectable
class SetUpPassWordCubit extends Cubit<SetUpPassWordState> {
  SetUpPassWordCubit({
    required SignUpUseCase signUpUseCase,
  })  : _signUpUseCase = signUpUseCase,
        super(SetUpPassWordInitial());

  final SignUpUseCase _signUpUseCase;

  bool _validateLength = false;
  bool _validateLowercase = false;
  bool _validateUppercase = false;
  bool _validateDigit = false;
  bool _validateSpecial = false;

  validatePass({required String password}) {
    _validateLength = password.length < 8 ? false : true;
    _validateLowercase = RegExp(r'[a-z]').hasMatch(password) ? true : false;
    _validateUppercase = RegExp(r'[A-Z]').hasMatch(password) ? true : false;
    _validateDigit = RegExp(r'[0-9]').hasMatch(password) ? true : false;
    _validateSpecial =
        RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password) ? true : false;
    emit(SetUpPassValidatePassState(
        validateLength: _validateLength,
        validateLowercase: _validateLowercase,
        validateUppercase: _validateUppercase,
        validateDigit: _validateDigit,
        validateSpecial: _validateSpecial));
  }
}
