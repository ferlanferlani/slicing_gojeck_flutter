import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Colors

// green
Color green1 = const Color(0xff00880F);
Color green2 = const Color(0xff097210);

// Dark
Color dark1 = const Color(0xff1C1C1C);
Color dark2 = const Color(0xff4A4A4A);
Color dark3 = const Color(0xff999798);
Color dark4 = const Color(0xffEDEDED);
Color dark5 = const Color(0xffE8E8E8);

// Blue
Color blue1 = const Color(0xff0281A0);
Color blue2 = const Color(0xff00AED5);
Color blue3 = const Color(0xff38BBDA);
Color blue4 = const Color(0xff9CCDDB);
Color white = const Color(0xffffffff);

Color event = const Color(0xffE8E8E8);

// Red
Color red = const Color(0xffED2739);
// Purple
Color purlpe = const Color(0xff87027B);

// Typography
// reguler 12.5
TextStyle reguler12_5 =
    const TextStyle(fontFamily: 'SF-Pro-Display', fontSize: 12.5);

// reguler 14
TextStyle reguler14 = reguler12_5.copyWith(fontSize: 14);

// semibold 12,5 bold
TextStyle semiBold12_5 = reguler12_5.copyWith(fontWeight: FontWeight.w600);

// semi bold 14
TextStyle semiBold14 = semiBold12_5.copyWith(fontSize: 14, letterSpacing: 0.1);

// bold 16
TextStyle bold16 = reguler12_5.copyWith(
    fontSize: 16, fontWeight: FontWeight.w700, letterSpacing: 0.1);

// bold 18
TextStyle bold18 = bold16.copyWith(fontSize: 18, letterSpacing: -0.5);
