import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'future_providers.g.dart';

@Riverpod(keepAlive: true)
Future<String> pokemonName(PokemonNameRef ref) async {
  final random = Random();
  int numero = random.nextInt(125) + 1;
  return await PokemonInformation.getPokemonName(numero);
}
