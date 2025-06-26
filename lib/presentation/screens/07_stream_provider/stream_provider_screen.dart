import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';

class StreamProviderScreen extends StatelessWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: const StreamView(),
    );
  }
}

class StreamView extends ConsumerWidget {
  const StreamView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInChat = ref.watch(userInChatProvider);

    if (userInChat.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (userInChat.hasError) {
      return Center(
        child: Text('Error: ${userInChat.error}'),
      );
    }
    final users = userInChat.value ?? [];
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          title: Text(user),
        );
      },
    );
  }
}
