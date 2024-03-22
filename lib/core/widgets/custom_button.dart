import 'package:bloc_chat_app/core/constans/app_colors.dart';
import 'package:bloc_chat_app/core/extensions/style_extension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.callback,
    this.width = double.infinity,
    this.textStyle,
    this.backgroundColor,
    this.height,
  });

  final String text;
  final VoidCallback callback;
  final double width;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: height ?? 64,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: backgroundColor ?? blueColor,
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle ?? context.body18400.copyWith(color: whiteColor),
          ),
        ),
      ),
    );
  }
}
