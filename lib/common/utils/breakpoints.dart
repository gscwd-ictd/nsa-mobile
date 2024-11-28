import 'package:flutter/material.dart';

class BreakPointUtils {
  bool isMedium(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  bool isCompact(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
}
