import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state_providers.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() => 5;
  void increment() {
    state++;
  }
}

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;
  void toggle() {
    state = !state;
  }
}

@riverpod
class UserName extends _$UserName {
  @override
  String build() => 'Abiel Crespo';
  void changeName(String name) {
    state = name;
  }
}
