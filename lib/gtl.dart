/// GTL - Giga Tool Library |
/// For - Dart Flutter |
/// Version - 0.1 |
/// Author - Temurumaru<Tulenov Temur Pulatovich>

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

// Variables

const Color mBlack = Color(0xFF000000);
const Color mBlue = Color(0xFF1389FD);
const Color mBlueAlpha = Color(0x881389FD);
const Color mRed = Color(0xFFA80000);
const Color mRedAlpha = Color(0x88A80000);
const Color mGreen = Color(0xFF33B633);
const Color mGreenAlpha = Color(0x882AB92A);
const Color mGrey = Color(0xFF3D3D3D);
const Color mGreyAlpha = Color(0x883D3D3D);
const Color mDarkGrey = Color(0xFF2E2E2E);
const Color mDarkGreyAlpha = Color(0x882E2E2E);
const Color mLightGrey = Color(0xFF828282);
const Color mLightGreyAlpha = Color(0x88828282);
const Color mOrange = Color(0xFFEB4700);
const Color mLightOrange = Color(0xFFEB6B00);
const Color mYellow = Color(0xFFDDCC00);
const Color mLightYellow = Color(0xFFEBE15D);
const Color mWhite = Color(0xFFFFFFFF);
const Color mWhiteAlpha = Color(0x88FFFFFF);
const Color mTransparent = Color(0x00FF00FF);

// Functions

// void mSleep(int milliseconds) {
//   Timer t;
//   print();
// }

class _mMoveWindow extends StatelessWidget {
  _mMoveWindow({Key? key, this.child}) : super(key: key);
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onPanStart: (details) {
          appWindow.startDragging();
        },
        onDoubleTap: () => appWindow.maximizeOrRestore(),
        child: this.child ?? Container());
  }
}

class mMoveWindow extends StatelessWidget {
  final Widget? child;
  mMoveWindow({Key? key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (child == null) return _mMoveWindow();
    return _mMoveWindow(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Expanded(child: this.child!)]),
    );
  }
}

class mWindowTitleBarBox extends StatelessWidget {
  final Widget? child;
  mWindowTitleBarBox({Key? key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Container();
    }
    final titlebarHeight = 50.0;
    return SizedBox(height: titlebarHeight, child: this.child ?? Container());
  }
}


Widget mEmptyContainer() {
  return SizedBox.shrink();
}

Widget mWindowButtons(BuildContext context) {

  final btnCloseColors = <String, dynamic>{
    "normal": Color(0xFFff524f),
    "hover": Color(0x99ff524f),
    "focus": Color(0x99ff524f),
    "iconNormal": Colors.transparent,
    "iconhover": mWhite,
    "iconfocus": Colors.transparent
  };

  final btnMinimizeColors = <String, dynamic>{
    "normal": Color(0xFFffbc00),
    "hover": Color(0x99ffbc00),
    "focus": Color(0x99ffbc00),
    "iconNormal": Colors.transparent,
    "iconhover": mWhite,
    "iconfocus": Colors.transparent
  };

  final btnMaximizeColors = <String, dynamic>{
    "normal": Color(0xFF00cd1e),
    "hover": Color(0x9900cd1e),
    "focus": Color(0x9900cd1e),
    "iconNormal": Colors.transparent,
    "iconhover": mWhite,
    "iconfocus": Colors.transparent
  };

  return Row(
    children: [
      Container(
        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
        width: 20,
        height: 20,
        child: MaterialButton(
          shape: CircleBorder(side: BorderSide(width: 2, style: BorderStyle.none)),
          child: Text(""),
          color: btnCloseColors["normal"],
          hoverColor: btnCloseColors['hover'],
          focusColor: btnCloseColors['focus'],
          textColor: Colors.transparent,
          onPressed: (){
            appWindow.close();
          },
        ),
      ),

      Container(
        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
        width: 20,
        height: 20,
        child: MaterialButton(
          shape: CircleBorder(side: BorderSide(width: 2, style: BorderStyle.none)),
          child: Text(""),
          color: btnMinimizeColors["normal"],
          hoverColor: btnMinimizeColors['hover'],
          focusColor: btnMinimizeColors['focus'],
          textColor: Colors.transparent,
          onPressed: (){
            appWindow.minimize();
          },
        ),
      ),

      Container(
        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
        width: 20,
        height: 20,
        child: MaterialButton(
          shape: CircleBorder(side: BorderSide(width: 2, style: BorderStyle.none)),
          child: Text(""),
          color: btnMaximizeColors["normal"],
          hoverColor: btnMaximizeColors['hover'],
          focusColor: btnMaximizeColors['focus'],
          textColor: Colors.transparent,
          onPressed: (){
            appWindow.maximizeOrRestore();
          },
        ),
      ),
      // CloseWindowButton(colors: btnCloseColors),
      // MinimizeWindowButton(colors: btnMinimizeColors),
      // MaximizeWindowButton(colors: btnMaximizeColors),
    ],
  );
}

Widget mButton(
    {
      required Widget child,
      required Function() onPressed,
      Color foregroundColor = mGreen,
      Color overlayColor = mLightGreyAlpha,
      double paddingTop = 0,
      double paddingBottom = 0,
      double paddingRight = 0,
      double paddingLeft = 0,
    }
    ) {
  return Padding( 
    padding: EdgeInsets.only(
      top: paddingTop,
      bottom: paddingBottom,
      right: paddingRight,
      left: paddingLeft,
    ),
    child: OutlinedButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(foregroundColor),
        overlayColor: MaterialStateProperty.all<Color>(overlayColor),
      ),
      onPressed: onPressed,
      child: child,
    ),
  );
}

Widget mTextField(
    {
      required Icon icon,
      required String hint,
      required TextEditingController controller,
      bool obscure = false
    }
    ) {
  return Container(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: TextField(
      controller: controller,
      obscureText: obscure,
      style: const TextStyle(
        color: mWhite,
      ),
      decoration: InputDecoration(
        labelText: hint,
        labelStyle: const TextStyle(color: mWhite),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.5)),
          borderSide: BorderSide(color: mBlue, width: 3),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: mBlue, width: 3),
        ),
        // hintText: hint,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10,),
          child: icon,
        ),
      )
    ),
  );
}

Icon mIcon(
    IconData? icon,
    {
      Color color = mWhite,
      double size = 24.0
    }
    ) {
  return Icon(
    icon ?? Icons.account_box,
    color: color,
    size: size,
  );
}

Widget mText(
    double? size,
    String? text,
    {
      bool underline = false,
      String family = 'Google',
      Color color = mWhite,
      Color backgroundColor = mTransparent,
      FontWeight fontWeight = FontWeight.normal
    }
    ) {
  return Text(
    text ?? '',
    style: TextStyle(
      decoration: (underline ? TextDecoration.underline : TextDecoration.none),
      fontFamily: family,
      fontSize: size ?? 20,
      color: color,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
    ),
  );
}

double wS(BuildContext context, double w) {
  return MediaQuery.of(context).size.width * w;
}

double hS(BuildContext context, double h) {
  return MediaQuery.of(context).size.height * h;
}