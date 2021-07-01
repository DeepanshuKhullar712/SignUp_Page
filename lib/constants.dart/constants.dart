import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        const Radius.circular(15.0),
      ),
      borderSide: BorderSide(color: Colors.white, width: 2),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2),
      borderRadius: const BorderRadius.all(
        const Radius.circular(15.0),
      ),
    ));
