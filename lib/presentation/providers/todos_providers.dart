import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';
import 'package:riverpod_app/domain/entities/todo.dart';
import 'package:uuid/uuid.dart';

part 'todos_providers.g.dart';

const uuid = Uuid();

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

@riverpod
class ToDos extends _$ToDos {
  @override
  List<Todo> build() => [
        Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null,
        ),
        Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null,
        ),
        Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null,
        ),
        Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: DateTime.now(),
        ),
        Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null,
        ),
        Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: DateTime.now(),
        ),
      ];

  void addTodo(String description) {
    state = [
      ...state,
      Todo(id: uuid.v4(), description: description, completedAt: null)
    ];
  }
}
