class Counter_Screen_State {
  int count;
  String name; // step2 : create state class.
  Counter_Screen_State({required this.count, this.name = "vis"});

  Counter_Screen_State copyWith({int? newCount , String? newName }){
    return Counter_Screen_State(count: newCount ?? count, name: newName ?? name);
  }
}