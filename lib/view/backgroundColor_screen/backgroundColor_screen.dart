import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/controlller/backgroundColor_controller/backgroundColor_controller.dart';

import '../../controlller/backgroundColor_controller/backgroundColor_state.dart';

class BackgroundcolorScreen extends ConsumerWidget {
  const BackgroundcolorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mybackgroundColor = ref.watch(backgroundColorStateNotifierProvider) as backgroundColorState;
    final containercolor = [
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.pinkAccent,
      Colors.white
    ];
    return Scaffold(
      backgroundColor: mybackgroundColor.backgroundColor,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(containercolor.length, (index) {
          return GestureDetector(
            onTap: () {
              ref.read(backgroundColorStateNotifierProvider.notifier).updateBackgroundColor(containercolor[index]);
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 65,
              width: 280,
              decoration: BoxDecoration(
                  color: containercolor[index],
                  border: Border.all(
                    color: Colors.black,
                    width: 4
                  )
              ),
            ),
          );
        })
      )),
    );
  }
}
