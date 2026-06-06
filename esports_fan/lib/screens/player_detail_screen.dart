import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class PlayerDetailScreen extends ConsumerStatefulWidget {
  const PlayerDetailScreen({super.key, required this.playerId});

  final String playerId;

  @override
  ConsumerState<PlayerDetailScreen> createState() => _PlayerDetailScreenState();
}

class _PlayerDetailScreenState extends ConsumerState<PlayerDetailScreen> {
  Player? _player;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final p = await api.getPlayer(int.parse(widget.playerId));
    setState(() => _player = p);
  }

  @override
  Widget build(BuildContext context) {
    final p = _player;
    if (p == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar: AppBar(title: Text(p.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('${p.team?.name} · ${p.role}'),
            Text('KDA ${p.kda.toStringAsFixed(2)}'),
            const SizedBox(height: 24),
            const Text('能力雷达图', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 280,
              child: RadarChart(
                RadarChartData(
                  radarShape: RadarShape.polygon,
                  tickCount: 4,
                  ticksTextStyle: const TextStyle(fontSize: 10),
                  getTitle: (i, _) {
                    const labels = ['KDA', '补刀', '视野', '伤害', '团战'];
                    return RadarChartTitle(text: labels[i]);
                  },
                  dataSets: [
                    RadarDataSet(
                      dataEntries: [
                        RadarEntry(value: min(p.kda / 6, 1)),
                        RadarEntry(value: min(p.csPerMin / 10, 1)),
                        RadarEntry(value: min(p.visionScore / 80, 1)),
                        RadarEntry(value: min(p.damageShare / 0.35, 1)),
                        RadarEntry(value: p.teamfight),
                      ],
                      fillColor: Colors.blue.withValues(alpha: 0.3),
                      borderColor: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text('稳定性 ${(p.consistency * 100).toStringAsFixed(0)}%'),
          ],
        ),
      ),
    );
  }
}
