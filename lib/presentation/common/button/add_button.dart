import 'package:flutter/material.dart';

import '../../../utilities/style/style.dart';

class AddButton extends StatelessWidget {
  final String title;
  final Color? textColor;
  final Color? backgroundColor;
  final Widget? icon;
  final VoidCallback? onTap;

  const AddButton(
      {super.key,
      required this.title,
      this.textColor,
      this.backgroundColor,
      this.onTap,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap != null ? () => onTap!() : null,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor ?? theme.color.yellowPrimary,
          borderRadius: BorderRadius.circular(999)
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: icon!,
              ),
            Text(
              title,
              style: theme.font.text14bold
                  .copyWith(color: textColor ?? theme.color.brownPrimary),
            )
          ],
        ),
      ),
    );
  }
}
