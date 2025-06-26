import 'package:riverpod_annotation/riverpod_annotation.dart'; // Importa riverpod_annotation

part 'hello_world_provider.g.dart'; // Parte generada

@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello, World!';
}
