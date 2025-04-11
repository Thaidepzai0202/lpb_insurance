import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lpb_insurance/presentation/screens/sign_up/set_up_pass_word/ui/set_up_pass_word_screen.dart';

import '../../../../di/di.dart';
import '../../../../utilities/routes/app_router.dart';
import '../../../../utilities/routes/route_define.dart';
import 'cubit/set_up_pass_word_cubit.dart';


class SetUpPassWordRoute extends RouteDefine {
  @override
  Path initRoute(dynamic arguments) => Path(
    builder: (_) => BlocProvider<SetUpPassWordCubit>(
      create: (_) => getIt<SetUpPassWordCubit>(),
      child:  SetUpPassWordScreen(),
    ),
  );

  @override
  String get routeName => 'set_up_pass_word';

  static push() {
    AppRouter.push(routeName: SetUpPassWordRoute().routeName);
  }

  static popAndPush() {
    AppRouter.popAndPush(routeName: SetUpPassWordRoute().routeName);
  }

  static clearAndPush() {
    AppRouter.popAndPush(routeName: SetUpPassWordRoute().routeName);
  }
}
