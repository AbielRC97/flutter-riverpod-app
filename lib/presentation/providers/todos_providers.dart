import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todos_providers.g.dart';

enum FilterType {
  all,
  completed,
  pending,
}

@riverpod
class ToDoTypeFilter extends _$ToDoTypeFilter {
  @override
  FilterType build() => FilterType.all;
  void changeFilter(FilterType filter) {
    state = filter;
  }
}
