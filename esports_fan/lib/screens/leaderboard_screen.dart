import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class LeaderboardScreen extends ConsumerStatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  ConsumerState<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends ConsumerState<LeaderboardScreen> {
  List<LeaderboardEntry> _entries = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final data = await api.getLeaderboard();
    setState(() => _entries = data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('预测榜')),
      body: ListView.builder(
        itemCount: _entries.length,
        itemBuilder: (_, i) {
          final e = _entries[i];
          return ListTile(
            leading: CircleAvatar(child: Text('${i + 1}')),
            title: Text(e.displayName),
            subtitle: Text('猜对 ${e.correctCount} / ${e.totalPredictions} 场'),
            trailing: Text('${e.fanPoints} 分'),
          );
        },
      ),
    );
  }
}
