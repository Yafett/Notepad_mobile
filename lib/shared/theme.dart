import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part '../main.dart';
part '../pages/splash-screen.dart';
part '../pages/home-screen.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}