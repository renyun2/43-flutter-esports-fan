import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';
import 'package:esports_fan/widgets/match_card.dart';

class MatchesScreen extends ConsumerStatefulWidget {
  const MatchesScreen({super.key});

  @override
  ConsumerState<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends ConsumerState<MatchesScreen> {
  List<Match> _matches = [];
  String? _game;
  Timer? _timer;

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final data = await api.getMatches(game: _game);
    setState(() => _matches = data);
  }

  @override
  void initState() {
    super.initState();
    _load();
    _timer = Timer.periodic(const Duration(seconds: 8), (_) => _load());
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
        title: const Text('赛程'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FilterChip(
                  label: const Text('全部'),
                  selected: _game == null,
                  onSelected: (_) {
                    setState(() => _game = null);
                    _load();
                  },
                ),
                for (final g in ['LOL', 'DOTA2', 'CS2', 'VALORANT'])
                  FilterChip(
                    label: Text(g),
                    selected: _game == g,
                    onSelected: (_) {
                      setState(() => _game = g);
                      _load();
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _matches.length,
        itemBuilder: (_, i) => MatchCard(match: _matches[i]),
      ),
    );
  }
}
