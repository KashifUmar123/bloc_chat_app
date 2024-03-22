import 'package:bloc_chat_app/core/constans/app_colors.dart';
import 'package:bloc_chat_app/core/extensions/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.child,
    this.navigationBar,
    this.drawer,
    this.statusBarColor,
    this.systemNavigationBarColor,
    this.padding,
    this.floatingActionButton,
  });
  final Widget child;
  final Widget? navigationBar;
  final Widget? drawer;
  final Color? statusBarColor;
  final Color? systemNavigationBarColor;
  final EdgeInsetsGeometry? padding;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: statusBarColor ?? whiteColor,
        systemNavigationBarColor: systemNavigationBarColor ?? whiteColor,
        systemStatusBarContrastEnforced: true,
      ),
      child: Scaffold(
        drawer: drawer,
        body: Container(
          padding: padding,
          height: context.height,
          width: context.width,
          child: child,
        ),
        bottomNavigationBar: navigationBar,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
