import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/view/backgroundColor_screen/backgroundColor_screen.dart';
import 'package:riverpod_flutter/view/counter_screen/counter_screen.dart';
import 'package:riverpod_flutter/view/toggle_screen/toggle_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));   //step 1:  Wrapper with ProviderScope.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home:ToggleScreen()
    );
  }
}
