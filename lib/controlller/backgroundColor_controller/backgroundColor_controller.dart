import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'backgroundColor_state.dart';


final backgroundColorStateNotifierProvider = StateNotifierProvider((ref) => backgroundColorStateNotifier());

class backgroundColorStateNotifier extends StateNotifier<backgroundColorState> {
  backgroundColorStateNotifier() : super(backgroundColorState(backgroundColor: Colors.white ));

  void updateBackgroundColor(Color newColor) {
  state = state.copyWith(newbackgroundColor: newColor);
  }

}