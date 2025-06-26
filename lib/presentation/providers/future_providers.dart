import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'future_providers.g.dart';

@Riverpod(keepAlive: true)
Future<String> pokemonName(PokemonNameRef ref) async {
  int numero = ref.watch(pokemonIdProvider);
  return await PokemonInformation.getPokemonName(numero);
}

@riverpod
class PokemonId extends _$PokemonId {
  @override
  int build() => 1;

  void next() {
    state++;
  }

  void previous() {
    if (state > 1) {
      state--;
    }
  }
}
