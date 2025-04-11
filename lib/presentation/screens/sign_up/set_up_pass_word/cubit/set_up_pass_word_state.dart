part of 'set_up_pass_word_cubit.dart';

abstract class SetUpPassWordState {}

class SetUpPassWordInitial extends SetUpPassWordState {}

class SetUpPassValidatePassState extends SetUpPassWordState {
  final bool validateLength;

  final bool validateLowercase;

  final bool validateUppercase;

  final bool validateDigit;

  final bool validateSpecial;

  SetUpPassValidatePassState(
      {required this.validateLength,
      required this.validateLowercase,
      required this.validateUppercase,
      required this.validateDigit,
      required this.validateSpecial});
}
