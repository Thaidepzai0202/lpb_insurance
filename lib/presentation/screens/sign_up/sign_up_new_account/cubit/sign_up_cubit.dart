import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/use_cases/sign_up_usecase.dart';

part 'sign_up_state.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    required SignUpUseCase signUpUseCase,
  })  : _signUpUseCase = signUpUseCase,
        super(SignUpInitial());

  final SignUpUseCase _signUpUseCase;
}
