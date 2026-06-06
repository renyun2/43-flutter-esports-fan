import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class PointsScreen extends ConsumerStatefulWidget {
  const PointsScreen({super.key});

  @override
  ConsumerState<PointsScreen> createState() => _PointsScreenState();
}

class _PointsScreenState extends ConsumerState<PointsScreen> {
  FanPointsInfo? _info;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final data = await api.getFanPoints();
    setState(() => _info = data);
  }

  @override
  Widget build(BuildContext context) {
    final info = _info;
    if (info == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar: AppBar(title: const Text('积分中心')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${info.points}',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const Text('当前粉丝积分'),
            const SizedBox(height: 24),
            const Text('预测记录', style: TextStyle(fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView(
                children: [
                  for (final h in info.history ?? <Map<String, dynamic>>[])
                    ListTile(
                      title: Text(h['tournament']?.toString() ?? '赛事'),
                      subtitle: Text(
                        h['is_correct'] == 1 ? '猜对 +10' : '待结算/未猜对',
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
