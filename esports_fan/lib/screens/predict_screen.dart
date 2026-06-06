import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class PredictScreen extends ConsumerStatefulWidget {
  const PredictScreen({super.key, required this.matchId});

  final String matchId;

  @override
  ConsumerState<PredictScreen> createState() => _PredictScreenState();
}

class _PredictScreenState extends ConsumerState<PredictScreen> {
  Match? _match;
  Duration _remaining = Duration.zero;
  Timer? _timer;
  String? _msg;

  void _startCountdown() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      final m = _match;
      if (m == null) return;
      final diff = DateTime.parse(m.startTime).difference(DateTime.now());
      setState(() => _remaining = diff.isNegative ? Duration.zero : diff);
    });
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final m = await api.getMatch(int.parse(widget.matchId));
    setState(() => _match = m);
    _startCountdown();
  }

  Future<void> _predict(int teamId) async {
    try {
      final api = ref.read(apiServiceProvider);
      final points = await api.predict(int.parse(widget.matchId), teamId);
      setState(() => _msg = '预测成功！剩余积分: $points');
    } catch (e) {
      setState(() => _msg = '预测失败：可能已截止或积分不足');
    }
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String _format(Duration d) {
    final h = d.inHours;
    final m = d.inMinutes.remainder(60);
    final s = d.inSeconds.remainder(60);
    return '${h}h ${m}m ${s}s';
  }

  @override
  Widget build(BuildContext context) {
    final m = _match;
    if (m == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    final canPredict = _remaining > Duration.zero && m.status == 'scheduled';
    return Scaffold(
      appBar: AppBar(title: const Text('赛事预测')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('消耗 5 积分参与预测，猜对 +10 分'),
            const SizedBox(height: 16),
            Text(
              canPredict ? '距截止: ${_format(_remaining)}' : '预测已截止',
              style: TextStyle(
                fontSize: 20,
                color: canPredict ? Colors.green : Colors.red,
              ),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: canPredict ? () => _predict(m.teamAId) : null,
              child: Text('预测 ${m.teamA?.name} 获胜'),
            ),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: canPredict ? () => _predict(m.teamBId) : null,
              child: Text('预测 ${m.teamB?.name} 获胜'),
            ),
            if (_msg != null) ...[
              const SizedBox(height: 16),
              Text(_msg!, textAlign: TextAlign.center),
            ],
          ],
        ),
      ),
    );
  }
}
