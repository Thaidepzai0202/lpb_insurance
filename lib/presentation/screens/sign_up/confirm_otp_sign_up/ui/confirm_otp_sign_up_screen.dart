import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lpb_insurance/generated/assets.dart';
import 'package:lpb_insurance/presentation/common/app_scaffold_widget.dart';
import 'package:lpb_insurance/presentation/common/text_field/common_text_field.dart';
import 'package:lpb_insurance/presentation/common/text_field/textfield_widget.dart';
import 'package:lpb_insurance/presentation/screens/sign_up/confirm_otp_sign_up/cubit/confirm_otp_sign_up_cubit.dart';
import 'package:lpb_insurance/presentation/screens/sign_up/set_up_pass_word/set_up_pass_word_route.dart';
import 'package:lpb_insurance/utilities/style/style.dart';

import '../../../../../generated/l10n.dart';

class ConfirmOtpSignUpScreen extends StatefulWidget {
  const ConfirmOtpSignUpScreen({super.key});

  @override
  State<ConfirmOtpSignUpScreen> createState() => _ConfirmOtpSignUpScreenState();
}

class _ConfirmOtpSignUpScreenState extends State<ConfirmOtpSignUpScreen> {
  late ConfirmOtpSignUpCubit _cubit;

  @override
  void initState() {
    _cubit = context.read();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: theme.color.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
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
            CommonTextField(
              height: 52,
              label: S.current.input_OTP,
              hintText: S.current.input_OTP,
              description: S.current.otp_is_send_to_the_phone,
              keyboardType: TextInputType.number,
              valueChanged: (text) {
                if (text.length == 6) {
                  // Navigator.pop(context);
                  SetUpPassWordRoute.push();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
