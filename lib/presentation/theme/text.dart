import 'package:flutter/material.dart';

const _display4 = TextStyle(fontSize: 38, fontWeight: FontWeight.bold);
const _display3 = TextStyle(fontSize: 32, fontWeight: FontWeight.normal);
const _display2 = TextStyle(fontSize: 26, fontWeight: FontWeight.normal);
const _display1 = TextStyle(fontSize: 22, fontWeight: FontWeight.normal);
const _headline = TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal);
const _title = TextStyle(fontSize: 19, fontWeight: FontWeight.normal);
const _body1 = TextStyle(fontSize: 18, fontWeight: FontWeight.normal);
const TextStyle _body2 = TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
const TextStyle _subhead =
    TextStyle(fontSize: 17, fontWeight: FontWeight.normal);
const _caption = TextStyle(fontSize: 15, fontWeight: FontWeight.normal);
const _overline =
    TextStyle(fontSize: 14, fontWeight: FontWeight.normal, letterSpacing: 0.4);
const _button = TextStyle(fontSize: 19, fontWeight: FontWeight.normal);

TextTheme getDefaultTextTheme() => TextTheme(
    display4: _display4,
    display3: _display3,
    display2: _display2,
    display1: _display1,
    headline: _headline,
    title: _title,
    body1: _body1,
    body2: _body2,
    subhead: _subhead,
    caption: _caption,
    overline: _overline,
    button: _button);

TextStyle get whiteBoldOverline =>
    _overline.copyWith(color: Colors.white, fontWeight: FontWeight.bold);

TextStyle get blackBoldOverline =>
    _body1.copyWith(color: Colors.black, fontWeight: FontWeight.bold);

TextStyle get display2BoldOverline =>
    _display2.copyWith(color: Colors.black, fontWeight: FontWeight.bold);

TextStyle get whiteOverline =>
    _overline.copyWith(color: Colors.white, fontSize: 11);

TextStyle get highlightLinkOverline => _overline.copyWith(
      color: Colors.blue,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
