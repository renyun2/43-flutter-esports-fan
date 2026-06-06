import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class MatchDetailScreen extends ConsumerStatefulWidget {
  const MatchDetailScreen({super.key, required this.matchId});

  final String matchId;

  @override
  ConsumerState<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends ConsumerState<MatchDetailScreen> {
  Match? _match;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final m = await api.getMatch(int.parse(widget.matchId));
    setState(() => _match = m);
  }

  @override
  Widget build(BuildContext context) {
    final m = _match;
    if (m == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar: AppBar(title: Text('${m.teamA?.name} vs ${m.teamB?.name}')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(m.tournament, style: Theme.of(context).textTheme.titleLarge),
            Text('${m.game} · BO${m.boFormat}'),
            const SizedBox(height: 16),
            Center(
              child: Text(
                '${m.scoreA} : ${m.scoreB}',
                style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
            Text('状态: ${m.status}'),
            Text('开赛: ${m.startTime}'),
            const Spacer(),
            if (m.status == 'finished')
              FilledButton(
                onPressed: () => context.push('/match/${m.id}/recap'),
                child: const Text('查看战报'),
              ),
            if (m.status == 'scheduled')
              FilledButton(
                onPressed: () => context.push('/match/${m.id}/predict'),
                child: const Text('赛事预测'),
              ),
          ],
        ),
      ),
    );
  }
}
