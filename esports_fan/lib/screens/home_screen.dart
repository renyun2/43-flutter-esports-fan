import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';
import 'package:esports_fan/widgets/match_card.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  List<Match> _matches = [];
  Timer? _timer;

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final all = await api.getMatches();
    final today = DateTime.now().toIso8601String().substring(0, 10);
    setState(() {
      _matches = all
          .where((m) => m.startTime.startsWith(today) || m.status == 'live')
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    _load();
    _timer = Timer.periodic(const Duration(seconds: 10), (_) => _load());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('今日赛程'),
        actions: [
          IconButton(
            icon: const Icon(Icons.leaderboard),
            onPressed: () => context.push('/leaderboard'),
          ),
        ],
      ),
      body: _matches.isEmpty
          ? const Center(child: Text('今日暂无赛程'))
          : ListView.builder(
              itemCount: _matches.length,
              itemBuilder: (_, i) => MatchCard(match: _matches[i]),
            ),
    );
  }
}
