import 'package:erp_admin/view/desktop_screen/desktop_screen.dart';
import 'package:erp_admin/view/mobile_screen/mobile_screen.dart';
import 'package:erp_admin/view/responsive_screen/responsive_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScreen(desktop: DesktopScreen(), mobile: MobileScreen());
  }
}