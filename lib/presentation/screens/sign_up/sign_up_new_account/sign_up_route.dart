import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lpb_insurance/presentation/screens/sign_up/sign_up_new_account/ui/sign_up_screen.dart';

import '../../../../di/di.dart';
import '../../../../utilities/routes/app_router.dart';
import '../../../../utilities/routes/route_define.dart';
import 'cubit/sign_up_cubit.dart';

class SignUpRoute extends RouteDefine {
  @override
  Path initRoute(dynamic arguments) => Path(
    builder: (_) => BlocProvider<SignUpCubit>(
      create: (_) => getIt<SignUpCubit>(),
      child:  SignUpScreen(),
    ),
  );

  @override
  String get routeName => 'sign_up';

  static push() {
    AppRouter.push(routeName: SignUpRoute().routeName);
  }

  static popAndPush() {
    AppRouter.popAndPush(routeName: SignUpRoute().routeName);
  }

  static clearAndPush() {
    AppRouter.popAndPush(routeName: SignUpRoute().routeName);
  }
}
