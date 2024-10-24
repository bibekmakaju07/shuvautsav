import 'package:flutter/material.dart';

extension Themeing on BuildContext {
  TextTheme textTheme() => Theme.of(this).textTheme;
}
