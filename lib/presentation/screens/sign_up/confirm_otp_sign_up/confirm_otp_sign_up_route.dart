import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lpb_insurance/presentation/screens/sign_up/confirm_otp_sign_up/cubit/confirm_otp_sign_up_cubit.dart';
import 'package:lpb_insurance/presentation/screens/sign_up/confirm_otp_sign_up/ui/confirm_otp_sign_up_screen.dart';

import '../../../../di/di.dart';
import '../../../../utilities/routes/app_router.dart';
import '../../../../utilities/routes/route_define.dart';


class ConfirmOtpSignUpRoute extends RouteDefine {
  @override
  Path initRoute(dynamic arguments) => Path(
    builder: (_) => BlocProvider<ConfirmOtpSignUpCubit>(
      create: (_) => getIt<ConfirmOtpSignUpCubit>(),
      child:  ConfirmOtpSignUpScreen(),
    ),
  );

  @override
  String get routeName => 'confirm_otp_sign_up';

  static push() {
    AppRouter.push(routeName: ConfirmOtpSignUpRoute().routeName);
  }

  static popAndPush() {
    AppRouter.popAndPush(routeName: ConfirmOtpSignUpRoute().routeName);
  }

  static clearAndPush() {
    AppRouter.popAndPush(routeName: ConfirmOtpSignUpRoute().routeName);
  }
}
