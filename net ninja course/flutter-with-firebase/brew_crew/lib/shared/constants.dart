import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  hintText: 'Text Field Unspecific',
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2)
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green, width: 2)
  ),
);