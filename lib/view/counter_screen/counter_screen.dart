import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/controlller/counter_screen_controller/counter_screen_controller.dart';

import '../../controlller/counter_screen_controller/counter_screen_state.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterscreenstate = ref.watch(CounterScreenStateNotifierProvider) as Counter_Screen_State;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counterscreenstate.count.toString()),
            Text(counterscreenstate.name)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        ref.read(CounterScreenStateNotifierProvider.notifier).onIncrement();
      }, child: Icon(Icons.add,)),
    );
  }
}
