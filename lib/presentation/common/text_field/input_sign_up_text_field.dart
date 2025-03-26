import 'package:flutter/material.dart';
import 'package:lpb_insurance/utilities/style/style.dart';

class InputSignUpTextField extends StatelessWidget {
  final String label;
  final String? hint;
  final TextEditingController controller;
  final String? Function(String?)? validator; // Hàm kiểm tra lỗi
  final bool obscureText;

  const InputSignUpTextField({
    super.key,
    this.hint,
    required this.label,
    required this.controller,
    this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: theme.font.text12r),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          style: theme.font.text16s,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: theme.font.text14r.copyWith(color: theme.color.gray4),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: theme.color.gray3), // Màu gạch chân mặc định
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: theme.color.gray3,
                  width: 1), // Màu gạch chân khi focus
            ),
          ),
          cursorColor: theme.color.textNormal,
          validator: validator, // Gọi hàm kiểm tra lỗi
        ),
      ],
    );
  }
}
