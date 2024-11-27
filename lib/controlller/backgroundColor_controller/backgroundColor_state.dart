import 'dart:ui';

class backgroundColorState {
  final Color backgroundColor;

  backgroundColorState({required this.backgroundColor});
  
  backgroundColorState copyWith({Color? newbackgroundColor}){
    return backgroundColorState(backgroundColor: newbackgroundColor ?? backgroundColor);
  }
}