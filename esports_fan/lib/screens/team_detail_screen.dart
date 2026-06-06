import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class TeamDetailScreen extends ConsumerStatefulWidget {
  const TeamDetailScreen({super.key, required this.teamId});

  final String teamId;

  @override
  ConsumerState<TeamDetailScreen> createState() => _TeamDetailScreenState();
}

class _TeamDetailScreenState extends ConsumerState<TeamDetailScreen> {
  Team? _team;

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final t = await api.getTeam(int.parse(widget.teamId));
    setState(() => _team = t);
  }

  Future<void> _toggleFollow() async {
    final t = _team!;
    final api = ref.read(apiServiceProvider);
    if (t.followed == true) {
      await api.unfollow('team', t.id);
    } else {
      await api.follow('team', t.id);
    }
    await _load();
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  Widget build(BuildContext context) {
    final t = _team;
    if (t == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar: AppBar(title: Text(t.name)),
      body: ListView(
        children: [
          ListTile(
            title: Text('${t.game} · ${t.region}'),
            subtitle: Text('胜率 ${(t.winRate * 100).toStringAsFixed(1)}%'),
            trailing: FilledButton(
              onPressed: _toggleFollow,
              child: Text(t.followed == true ? '已关注' : '关注'),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('阵容', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          for (final p in t.roster ?? <Player>[])
            ListTile(
              title: Text(p.name),
              subtitle: Text('${p.role} · KDA ${p.kda.toStringAsFixed(1)}'),
              onTap: () => context.push('/player/${p.id}'),
            ),
        ],
      ),
    );
  }
}
