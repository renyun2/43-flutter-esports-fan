import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class MessagesScreen extends ConsumerStatefulWidget {
  const MessagesScreen({super.key});

  @override
  ConsumerState<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends ConsumerState<MessagesScreen> {
  List<NotificationItem> _items = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final data = await api.getNotifications();
    setState(() => _items = data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('消息')),
      body: _items.isEmpty
          ? const Center(child: Text('暂无消息'))
          : ListView.builder(
              itemCount: _items.length,
              itemBuilder: (_, i) {
                final n = _items[i];
                return ListTile(
                  leading: Icon(
                    n.read == 1 ? Icons.mail_outline : Icons.mark_email_unread,
                  ),
                  title: Text(n.title),
                  subtitle: Text('${n.body}\n${n.createdAt}'),
                  isThreeLine: true,
                );
              },
            ),
    );
  }
}
