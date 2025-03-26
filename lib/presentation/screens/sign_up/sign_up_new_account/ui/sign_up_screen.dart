import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lpb_insurance/presentation/common/app_scaffold_widget.dart';
import 'package:lpb_insurance/presentation/common/button/primary_button.dart';
import 'package:lpb_insurance/presentation/common/text_field/input_sign_up_text_field.dart';
import 'package:lpb_insurance/presentation/screens/sign_up/confirm_otp_sign_up/confirm_otp_sign_up_route.dart';
import 'package:lpb_insurance/utilities/style/style.dart';

import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';
import '../cubit/sign_up_cubit.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late SignUpCubit _cubit;

  TextEditingController _numberPhoneEditingController = TextEditingController();
  TextEditingController _referralCodeEditingController = TextEditingController();

  @override
  void initState() {
    _cubit = context.read();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    theme.registerNotifyUpdated(context);
    return AppScaffold(
      backgroundColor: theme.color.primaryOrange,
      body: SizedBox(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Stack(
          children: [
            Positioned(
                top: -40,
                right: 0,
                left: 0,
                child: Image.asset(Assets.imagesBackgroundInsurance)),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: _body(),
            )
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return Container(
      padding: EdgeInsets.only(top: 36, bottom: 74, right: 32, left: 32),
      decoration: BoxDecoration(
          color: theme.color.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          )),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(),
          const SizedBox(
            height: 20,
          ),
          InputSignUpTextField(
              label: S.current.user_account,
              hint: S.current.phone_number,
              controller: _numberPhoneEditingController),
          const SizedBox(
            height: 30,
          ),
          InputSignUpTextField(
              label: S.current.referral_code,
              hint: S.current.enter_referral_code,
              controller: _referralCodeEditingController),
          const SizedBox(
            height: 30,
          ),
          PrimaryButton(
              text: S.current.signup, onPressed: () {
                ConfirmOtpSignUpRoute.push();
          }, isEnabled: true),
          const SizedBox(
            height: 20,
          ),
          _button(onTap: (){}, title: S.current.forgot_password),
          const SizedBox(
            height: 20,
          ),
          _button(onTap: (){}, title: S.current.sign_in),
        ],

      ),
    );
  }

  Widget _title() {
    return Text(
      S.current.signup,
      style: theme.font.text30s,
    );
  }

  Widget _button({required VoidCallback onTap, required String title}) {
    return InkWell(
      onTap: onTap,
      child: Text(title,
        style: theme.font.text14r.copyWith(color: theme.color.lpbColor),),
    );
  }
}
