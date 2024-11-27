import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/controlller/counter_screen_controller/counter_screen_state.dart';

final CounterScreenStateNotifierProvider = StateNotifierProvider((ref) => CounterScreenStateNotifier());

class CounterScreenStateNotifier extends StateNotifier<Counter_Screen_State> {
  CounterScreenStateNotifier() : super(Counter_Screen_State(count: 0));

  onIncrement () {
    state = state.copyWith(newCount: ++ state.count , newName: state.count % 2 ==0 ? "luminar" : "vis");
  }


}


//step3 : create state notifier class.
//step4 : create state notifier provider.