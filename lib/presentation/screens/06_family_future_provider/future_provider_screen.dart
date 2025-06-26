import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';

class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 1;
  @override
  Widget build(BuildContext context) {
    final pokemonAsync = ref.watch(pokemonProvider(pokemonId));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Family Future Provider'),
        ),
        body: Center(
          child: pokemonAsync.when(
              data: (data) => Text(data),
              error: (error, stackError) => Text('$error'),
              loading: () => const CircularProgressIndicator()),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: 'next',
              child: const Icon(Icons.skip_next),
              onPressed: () {
                pokemonId++;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              heroTag: 'previous',
              child: const Icon(Icons.skip_previous),
              onPressed: () {
                if (pokemonId > 1) {
                  pokemonId--;
                  setState(() {});
                }
              },
            ),
          ],
        ));
  }
}
