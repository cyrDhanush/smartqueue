import 'package:flutter/material.dart';

Color themepink = Color(0xffFC8787);
Color lightgrey = Color(0xffD3D3D3);

// textfield decorations

InputDecoration inputDecoration = InputDecoration(
  hintText: 'Email or Phone',
  contentPadding: EdgeInsets.symmetric(horizontal: 20),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black.withAlpha(0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      color: themepink,
    ),
  ),
);
