import 'package:flutter/material.dart';
import 'package:lpb_insurance/presentation/common/text_field/common_text_field.dart';
import '../../../generated/assets.dart';
import '../../../utilities/style/style.dart';
import '../load_image/load_image.dart';


class InputPassword extends StatefulWidget {
  final String? label;
  final bool autofocus;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final bool hasError;
  final ValueChanged<String>? valueChanged;
  final VoidCallback? onClear;
  final bool? required;

  const InputPassword({
    super.key,
    this.label,
    this.autofocus = false,
    this.controller,
    this.focusNode,
    this.hintText,
    this.hasError = false,
    this.valueChanged,
    this.onClear,
    this.required,
  });

  @override
  State<InputPassword> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<InputPassword> {
  bool _enable = true;

  @override
  Widget build(BuildContext context) {
    theme.registerNotifyUpdated(context);

    return CommonTextField(
      height: 52,
      label: widget.label,
      controller: widget.controller,
      autofocus: widget.autofocus,
      obscureText: _enable,
      focusNode: widget.focusNode,
      hintText: widget.hintText,
      hasError: widget.hasError,
      valueChanged: widget.valueChanged,
      onClear: widget.onClear,
      required: widget.required,
      rightIcon: InkWell(
        onTap: () {
          setState(() {
            _enable = !_enable;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: LoadImage(
            url: !_enable ? Assets.iconsEyeOn : Assets.iconsEyeOff,
            colors: theme.color.b20,
          ),
        ),

      ),
    );
  }
}
