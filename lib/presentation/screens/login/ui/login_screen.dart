import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lpb_insurance/presentation/screens/sign_up/sign_up_new_account/sign_up_route.dart';

import '../../../../utilities/style/style.dart';
import '../../../common/app_scaffold_widget.dart';
import '../cubit/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginCubit _cubit;
  late String deviceName;

  @override
  void initState() {
    super.initState();
    _cubit = context.read();
    deviceName = "The Thai";
  }

  @override
  Widget build(BuildContext context) {
    theme.registerNotifyUpdated(context);

    return BlocListener<LoginCubit, LoginState>(
      listener: _handleListener,
      child: AppScaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: _loginForm(),
        ),
      ),
    );
  }

  _loginForm() {
    return Column(
      children: [
        const SizedBox(
          height: 200,
        ),
        InkWell(
          onTap: () {
            SignUpRoute.push();
          },
          child: Center(
            child: Container(
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: theme.color.blackPrimary,
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Device : $deviceName",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: theme.color.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _handleListener(BuildContext context, LoginState state) {
    // handle event fired
  }
}
