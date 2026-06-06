import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class BadgesScreen extends ConsumerStatefulWidget {
  const BadgesScreen({super.key});

  @override
  ConsumerState<BadgesScreen> createState() => _BadgesScreenState();
}

class _BadgesScreenState extends ConsumerState<BadgesScreen> {
  List<Badge> _badges = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final data = await api.getBadges();
    setState(() => _badges = data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('粉丝勋章')),
      body: ListView.builder(
        itemCount: _badges.length,
        itemBuilder: (_, i) {
          final b = _badges[i];
          return ListTile(
            leading: Text(b.icon, style: const TextStyle(fontSize: 28)),
            title: Text(b.name),
            subtitle: Text(b.description),
            trailing: b.earned == true
                ? const Icon(Icons.check_circle, color: Colors.green)
                : const Icon(Icons.lock_outline),
          );
        },
      ),
    );
  }
}
