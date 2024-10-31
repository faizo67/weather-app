import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class VisibleBtn extends ChangeNotifier {
  bool _isVisible = false;

  bool get isVisible => _isVisible;

  void toggleBtn() {
    _isVisible = !isVisible;
    notifyListeners();
  }
}
