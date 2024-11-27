import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'toggle_state.dart';

final toggleNotifierProvider = StateNotifierProvider(
      (ref) => ToggleNotifier(),
);

class ToggleNotifier extends StateNotifier<Togglebg> {
  ToggleNotifier()
      : super(Togglebg(
    bgColor: Colors.white,
    isLightMode: false,
  ));

  void toggleChangeBgColor(bool value) {
    state = state.copyWith(
      newbgColor: value ? Colors.black : Colors.white,
      newIsLightMode: value,
    );
  }
}
