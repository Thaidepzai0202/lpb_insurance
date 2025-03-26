import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:lpb_insurance/presentation/application/application.dart';
import 'app.dart';
import 'di/di.dart';
import 'di/environment/build_config.dart';
import 'flavors.dart';

// const env =
// String.fromEnvironment('FLUTTER_APP_FLAVOR', defaultValue: CustomEnv.uat);
FutureOr<void> main() async {

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final env =  F.name.toString();
  await configureDependencies(env: env);

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  FlutterNativeSplash.remove();

  runApp(const Application());
}