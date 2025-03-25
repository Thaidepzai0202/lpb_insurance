import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lpb_insurance/presentation/screens/login/ui/login_screen.dart';

import '../../../di/di.dart';
import '../../../utilities/routes/app_router.dart';
import '../../../utilities/routes/route_define.dart';
import 'cubit/login_cubit.dart';

class LoginRoute extends RouteDefine {
  @override
  Path initRoute(dynamic arguments) => Path(
        builder: (_) => BlocProvider<LoginCubit>(
          create: (_) => getIt<LoginCubit>(),
          child: const LoginScreen(),
        ),
      );

  @override
  String get routeName => 'login';

  static push() {
    AppRouter.push(routeName: LoginRoute().routeName);
  }

  static popAndPush() {
    AppRouter.popAndPush(routeName: LoginRoute().routeName);
  }

  static clearAndPush() {
    AppRouter.popAndPush(routeName: LoginRoute().routeName);
  }
}
