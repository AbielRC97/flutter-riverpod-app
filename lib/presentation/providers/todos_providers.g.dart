// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$toDoTypeFilterHash() => r'c1dca455e17b0605e6707f38a208ef15580f6f4b';

/// See also [ToDoTypeFilter].
@ProviderFor(ToDoTypeFilter)
final toDoTypeFilterProvider =
    AutoDisposeNotifierProvider<ToDoTypeFilter, FilterType>.internal(
  ToDoTypeFilter.new,
  name: r'toDoTypeFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$toDoTypeFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ToDoTypeFilter = AutoDisposeNotifier<FilterType>;
String _$toDosHash() => r'ed629db910b4cafacce33a820bf0fe111f436f8d';

/// See also [ToDos].
@ProviderFor(ToDos)
final toDosProvider = AutoDisposeNotifierProvider<ToDos, List<Todo>>.internal(
  ToDos.new,
  name: r'toDosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$toDosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ToDos = AutoDisposeNotifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
