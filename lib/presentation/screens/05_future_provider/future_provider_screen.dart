import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonName = ref.watch(pokemonNameProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Future Provider'),
        ),
        body: Center(
          child: pokemonName.when(
              data: (data) => Text(data),
              error: (error, stack) => Text('Error: $error'),
              loading: () => const CircularProgressIndicator()),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: 'next',
              child: const Icon(Icons.skip_next),
              onPressed: () {
                ref.read(pokemonIdProvider.notifier).next();
              },
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              heroTag: 'previous',
              child: const Icon(Icons.skip_previous),
              onPressed: () {
                ref.read(pokemonIdProvider.notifier).previous();
              },
            ),
          ],
        ));
  }
}
