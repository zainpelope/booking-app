import 'package:flutter/cupertino.dart';

extension DoubleExtension on double {
  Widget get width => SizedBox(width: this);
  Widget get height => SizedBox(height: this);
}
