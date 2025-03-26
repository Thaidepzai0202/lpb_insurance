import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/use_cases/sign_up_usecase.dart';

part 'confirm_otp_sign_up_state.dart';

@injectable
class ConfirmOtpSignUpCubit extends Cubit<ConfirmOtpSignUpState> {
  ConfirmOtpSignUpCubit({required SignUpUseCase signUpUseCase})
      : _signUpUseCase = signUpUseCase,
        super(ConfirmOtpSignUpInitial());

  final SignUpUseCase _signUpUseCase;
}
