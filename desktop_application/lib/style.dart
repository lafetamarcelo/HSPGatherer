
import 'package:flutter/material.dart';

BoxDecoration defaultBoxDecoration(){
  return BoxDecoration(
    color: Colors.white70,
    shape: BoxShape.rectangle,
    border: Border.all(
      color: Colors.black,
      width: 0.01,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(25.0)
    )
  );
}