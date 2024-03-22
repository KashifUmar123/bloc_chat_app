import 'package:bloc_chat_app/core/constans/app_colors.dart';
import 'package:bloc_chat_app/core/extensions/num_extension.dart';
import 'package:bloc_chat_app/core/extensions/style_extension.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({
    super.key,
    this.controller,
    required this.hinText,
    this.isPassword = false,
    this.textInputType = TextInputType.text,
    this.title,
    this.readonly = false,
    this.minLines = 1,
    this.maxLines = 1,
    this.hintColor,
    this.contentPadding,
    this.validator,
    this.autovalidateMode,
    this.errorStyle,
    this.onChange,
  });

  final TextEditingController? controller;
  final String hinText;
  final bool isPassword;
  final TextInputType textInputType;
  final String? title;
  final bool readonly;
  final int minLines;
  final int maxLines;
  final Color? hintColor;
  final EdgeInsetsGeometry? contentPadding;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final TextStyle? errorStyle;
  final Function(String?)? onChange;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool obsecureText = true;

  @override
  void initState() {
    super.initState();
    obsecureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) ...[
          Text(
            widget.title!,
            style: context.body16400,
          ),
          11.heightSpace,
        ],
        TextFormField(
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          readOnly: widget.readonly,
          autovalidateMode: widget.autovalidateMode,
          keyboardType: widget.textInputType,
          obscureText: obsecureText,
          controller: widget.controller,
          style: context.body16400,
          cursorColor: blackColor,
          validator: widget.validator,
          onChanged: widget.onChange,
          decoration: InputDecoration(
            fillColor: greyColor.withOpacity(.2),
            filled: true,
            contentPadding: widget.contentPadding ??
                const EdgeInsets.symmetric(horizontal: 24),
            hintText: widget.hinText,
            hintStyle: context.body16400
                .copyWith(color: widget.hintColor ?? greyColor),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            suffixIcon: _getSuffixView(),
            suffixIconColor: whiteColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: whiteColor.withOpacity(.3),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: whiteColor.withOpacity(.3),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: whiteColor.withOpacity(.3),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: whiteColor.withOpacity(.3),
              ),
            ),
            errorStyle: widget.errorStyle,
          ),
        ),
      ],
    );
  }

  dynamic _getSuffixView() {
    if (widget.isPassword) {
      return InkWell(
        onTap: () {
          setState(() {
            obsecureText = !obsecureText;
          });
        },
        child: Icon(
          obsecureText ? Icons.visibility : Icons.visibility_off,
          color: blueColor,
        ),
      );
    }
    return null;
  }
}
