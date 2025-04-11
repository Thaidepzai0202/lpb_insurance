// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Không có dữ liệu`
  String get no_data {
    return Intl.message(
      'Không có dữ liệu',
      name: 'no_data',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký`
  String get signup {
    return Intl.message(
      'Đăng ký',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Tên đăng nhập`
  String get user_account {
    return Intl.message(
      'Tên đăng nhập',
      name: 'user_account',
      desc: '',
      args: [],
    );
  }

  /// `Mã giới thiệu`
  String get referral_code {
    return Intl.message(
      'Mã giới thiệu',
      name: 'referral_code',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại`
  String get phone_number {
    return Intl.message(
      'Số điện thoại',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mã giới thiệu`
  String get enter_referral_code {
    return Intl.message(
      'Nhập mã giới thiệu',
      name: 'enter_referral_code',
      desc: '',
      args: [],
    );
  }

  /// `Quên mật khẩu?`
  String get forgot_password {
    return Intl.message(
      'Quên mật khẩu?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get sign_in {
    return Intl.message(
      'Đăng nhập',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mã OTP`
  String get input_OTP {
    return Intl.message(
      'Nhập mã OTP',
      name: 'input_OTP',
      desc: '',
      args: [],
    );
  }

  /// `Mã OTP được gửi về số điện thoại KH đăng ký`
  String get otp_is_send_to_the_phone {
    return Intl.message(
      'Mã OTP được gửi về số điện thoại KH đăng ký',
      name: 'otp_is_send_to_the_phone',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mật khẩu mới`
  String get input_new_pass {
    return Intl.message(
      'Nhập mật khẩu mới',
      name: 'input_new_pass',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mật lại khẩu mới`
  String get input_new_pass_again {
    return Intl.message(
      'Nhập mật lại khẩu mới',
      name: 'input_new_pass_again',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu mới đảm bảo`
  String get new_pass_ensure {
    return Intl.message(
      'Mật khẩu mới đảm bảo',
      name: 'new_pass_ensure',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu phải từ 8 ký tự trở lên`
  String get password_length {
    return Intl.message(
      'Mật khẩu phải từ 8 ký tự trở lên',
      name: 'password_length',
      desc: '',
      args: [],
    );
  }

  /// `Có ít nhất một chữ viết thường`
  String get password_lowercase {
    return Intl.message(
      'Có ít nhất một chữ viết thường',
      name: 'password_lowercase',
      desc: '',
      args: [],
    );
  }

  /// `Có ít nhất một chữ viết hoa`
  String get password_uppercase {
    return Intl.message(
      'Có ít nhất một chữ viết hoa',
      name: 'password_uppercase',
      desc: '',
      args: [],
    );
  }

  /// `Có ít nhất một chữ số`
  String get password_digit {
    return Intl.message(
      'Có ít nhất một chữ số',
      name: 'password_digit',
      desc: '',
      args: [],
    );
  }

  /// `Có ít nhất một ký tự đặc biệt`
  String get password_special {
    return Intl.message(
      'Có ít nhất một ký tự đặc biệt',
      name: 'password_special',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
