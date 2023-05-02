

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/dashboard/presentation/controller/dashboard_controller.dart';

final goRouterNotifierProvider = Provider<GoRouterNotifier>((ref) {
//  ref.watch(dashboardControllerProvider);
  return GoRouterNotifier();
});

class GoRouterNotifier extends ChangeNotifier {
  bool _isLoggedIn = false;
  
  bool get isLoggedIn => _isLoggedIn;

  set isLoggedIn(bool value) {
    debugPrint('GoRouterNotifier: isLoggedIn: $value');
    _isLoggedIn = value;
    notifyListeners();
  }

}