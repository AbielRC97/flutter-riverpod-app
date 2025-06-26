import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state_providers.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() => 5;
  void increment() {
    state++;
  }
}

@Riverpod(keepAlive: true)
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;
  void toggle() {
    state = !state;
  }
}

@Riverpod(keepAlive: true)
class UserName extends _$UserName {
  @override
  String build() => 'Abiel Crespo';
  void changeName(String name) {
    state = name;
  }
}
