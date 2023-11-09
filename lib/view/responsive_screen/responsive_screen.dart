import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
   ResponsiveScreen({super.key, required this.desktop, required this.mobile});
  final Widget desktop;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constrains){
      if(constrains.maxWidth<600){
  return mobile;
      }else{
        return desktop;
      }
    });
  }
}