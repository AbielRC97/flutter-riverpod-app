// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredToDoHash() => r'e994b666dab94d4b29f4cfeb8ff87a344c2f67c6';

/// See also [filteredToDo].
@ProviderFor(filteredToDo)
final filteredToDoProvider = AutoDisposeProvider<List<Todo>>.internal(
  filteredToDo,
  name: r'filteredToDoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$filteredToDoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredToDoRef = AutoDisposeProviderRef<List<Todo>>;
String _$toDoTypeFilterHash() => r'58db4032f2260afe98fef8b2cbd22dc219d317ee';

/// See also [ToDoTypeFilter].
@ProviderFor(ToDoTypeFilter)
final toDoTypeFilterProvider =
    NotifierProvider<ToDoTypeFilter, FilterType>.internal(
  ToDoTypeFilter.new,
  name: r'toDoTypeFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$toDoTypeFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ToDoTypeFilter = Notifier<FilterType>;
String _$toDosHash() => r'a4361c583c904fa5914b8d7d7ced324043df6271';

/// See also [ToDos].
@ProviderFor(ToDos)
final toDosProvider = NotifierProvider<ToDos, List<Todo>>.internal(
  ToDos.new,
  name: r'toDosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$toDosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ToDos = Notifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
