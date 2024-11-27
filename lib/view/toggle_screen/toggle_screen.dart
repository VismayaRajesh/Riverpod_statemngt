import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../controlller/toggle_controller/toggle_controller.dart';
import '../../controlller/toggle_controller/toggle_state.dart';

class ToggleScreen extends ConsumerWidget {
  const ToggleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleState = ref.watch(toggleNotifierProvider) as Togglebg;

    return Scaffold(
      backgroundColor: toggleState.bgColor, // Use the bgColor state
      body: Center(
        child: const SwitchExample(),
      ),
    );
  }
}

class SwitchExample extends ConsumerWidget {
  const SwitchExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleState = ref.watch(toggleNotifierProvider) as Togglebg;

    return Switch(
      value: toggleState.isLightMode, // Use the isLightMode property
      activeColor: Colors.red,
      onChanged: (bool value) {
        // Call the controller to toggle the state
        ref.read(toggleNotifierProvider.notifier).toggleChangeBgColor(value);
      },
    );
  }
}
