import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class TeamsScreen extends ConsumerStatefulWidget {
  const TeamsScreen({super.key});

  @override
  ConsumerState<TeamsScreen> createState() => _TeamsScreenState();
}

class _TeamsScreenState extends ConsumerState<TeamsScreen> {
  List<Team> _teams = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final data = await api.getTeams();
    setState(() => _teams = data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('战队列表')),
      body: ListView.builder(
        itemCount: _teams.length,
        itemBuilder: (_, i) {
          final t = _teams[i];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: _colorFromHex(t.logoColor),
              child: Text(t.name[0]),
            ),
            title: Text(t.name),
            subtitle: Text('${t.game} · ${t.region} · 胜率 ${(t.winRate * 100).toStringAsFixed(0)}%'),
            onTap: () => context.push('/team/${t.id}'),
          );
        },
      ),
    );
  }
}

Color _colorFromHex(String hex) {
  final h = hex.replaceFirst('#', '');
  return Color(int.parse('FF$h', radix: 16));
}
