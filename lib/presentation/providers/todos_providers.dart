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

@Riverpod(keepAlive: true)
class ToDoTypeFilter extends _$ToDoTypeFilter {
  @override
  FilterType build() => FilterType.all;
  void changeFilter(FilterType filter) {
    state = filter;
  }
}

@Riverpod(keepAlive: true)
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

  void toggleTodo(String id) {
    state = state.map((e) {
      if (e.id == id) {
        e = e.copyWith(
          completedAt: e.done ? null : DateTime.now(),
        );
      }
      return e;
    }).toList();
  }

  void addTodo(String description) {
    state = [
      ...state,
      Todo(id: uuid.v4(), description: description, completedAt: null)
    ];
  }
}

@riverpod
List<Todo> filteredToDo(FilteredToDoRef ref) {
  final filter = ref.watch(toDoTypeFilterProvider);
  final todos = ref.watch(toDosProvider);
  switch (filter) {
    case FilterType.all:
      return todos;
    case FilterType.completed:
      return todos.where((todo) => todo.done).toList();
    case FilterType.pending:
      return todos.where((todo) => !todo.done).toList();
  }
}
