import 'package:flutter/material.dart';

extension Box on double {
  SizedBox verticalSpace() {
    return SizedBox(
      height: this,
    );
  }

  SizedBox horizontalSpace() {
    return SizedBox(
      width: this,
    );
  }
}
