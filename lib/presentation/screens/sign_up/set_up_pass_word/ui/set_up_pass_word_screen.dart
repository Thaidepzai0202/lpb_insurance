import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lpb_insurance/presentation/common/app_scaffold_widget.dart';
import 'package:lpb_insurance/presentation/common/text_field/input_password.dart';
import 'package:lpb_insurance/presentation/common/text_field/textfield_password.dart';

import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../utilities/style/style.dart';
import '../cubit/set_up_pass_word_cubit.dart';

class SetUpPassWordScreen extends StatefulWidget {
  const SetUpPassWordScreen({super.key});

  @override
  State<SetUpPassWordScreen> createState() => _SetUpPassWordScreenState();
}

class _SetUpPassWordScreenState extends State<SetUpPassWordScreen> {
  late SetUpPassWordCubit _cubit;


  @override
  void initState() {
    _cubit = context.read();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  Assets.iconsArrowLeft,
                  color: theme.color.gray4,
                  height: 24,
                  width: 24,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                S.current.signup,
                style: theme.font.text24s,
              ),
              const SizedBox(
                height: 30,
              ),
              InputPassword(
                label: "Nhap mat khau moi",
                hintText: "Nhap mat khau moi",
                valueChanged: (password) {
                  _cubit.validatePass(password: password);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              InputPassword(
                label: "Nhap mat lai khau moi",
                hintText: "Nhap mat lai khau moi",
                valueChanged: (text) {},
              ),
              const SizedBox(
                height: 30,
              ),
              _validatePassWidget()
            ],
          ),
        ),
      ),
    );
  }

  Widget _validatePassWidget() {
    return BlocListener<SetUpPassWordCubit, SetUpPassWordState>(
      listener: (context, state) {
        if (state is SetUpPassValidatePassState) {
          // validateLength = state.validateLength;
          // validateLowercase = state.validateLowercase;
          // validateUppercase = state.validateUppercase;
          // validateDigit = state.validateDigit;
          // validateSpecial = state.validateSpecial;
          print(state.validateLength);
        }
      },
      child: BlocBuilder<SetUpPassWordCubit, SetUpPassWordState>(
        buildWhen: (previous, current) {
          return current is SetUpPassValidatePassState;
        },
        builder: (context, state) {
          //validate pass
          bool validateLength = false;
          bool validateLowercase = false;
          bool validateUppercase = false;
          bool validateDigit = false;
          bool validateSpecial = false;
          if(state is SetUpPassValidatePassState){
            validateLength = state.validateLength;
            validateLowercase = state.validateLowercase;
            validateUppercase = state.validateUppercase;
            validateDigit = state.validateDigit;
            validateSpecial = state.validateSpecial;
            print(state.validateLength);
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.current.new_pass_ensure,
                style: theme.font.text14s,
              ),
              _itemValidate(
                  value: S.current.password_length, isTrue: validateLength),
              _itemValidate(
                  value: S.current.password_lowercase,
                  isTrue: validateLowercase),
              _itemValidate(
                  value: S.current.password_uppercase,
                  isTrue: validateUppercase),
              _itemValidate(
                  value: S.current.password_digit, isTrue: validateDigit),
              _itemValidate(
                  value: S.current.password_special, isTrue: validateSpecial)
            ],
          );
        },
      ),
    );
  }

  Widget _itemValidate({required String value, bool? isTrue}) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          if (isTrue != null)
            SvgPicture.asset(
                isTrue ? Assets.iconsDoneVSmall : Assets.iconsErrorXSmall)
          else
            _emptyIcon(),
          SizedBox(
            width: 6,
          ),
          Text(
            value,
            style: theme.font.text14r.copyWith(color: theme.color.gray6),
          )
        ],
      ),
    );
  }

  _emptyIcon() {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: theme.color.gray4),
          shape: BoxShape.circle),
    );
  }
}
