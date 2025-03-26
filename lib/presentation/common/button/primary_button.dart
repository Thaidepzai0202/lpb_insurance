import 'package:flutter/material.dart';
import 'package:lpb_insurance/utilities/style/style.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isEnabled;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor:
              isEnabled ? theme.color.primaryOrange : theme.color.gray3,
        ),
        child: Text(
          text,
          style: theme.font.text16s.copyWith(
              color: isEnabled ? theme.color.lpbColor : theme.color.gray4),
        ),
      ),
    );
  }
}
