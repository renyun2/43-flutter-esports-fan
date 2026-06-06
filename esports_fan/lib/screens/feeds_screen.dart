import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class FeedsScreen extends ConsumerStatefulWidget {
  const FeedsScreen({super.key});

  @override
  ConsumerState<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends ConsumerState<FeedsScreen> {
  List<Feed> _feeds = [];
  bool _onlyFollowed = true;

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    List<int>? teamIds;
    if (_onlyFollowed) {
      try {
        final follows = await api.getFollows();
        teamIds = follows
            .where((f) => f.targetType == 'team')
            .map((f) => f.targetId)
            .toList();
      } catch (_) {
        teamIds = [];
      }
    }
    final data = await api.getFeeds(teamIds: teamIds);
    setState(() => _feeds = data);
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('选手动态'),
        actions: [
          FilterChip(
            label: const Text('仅关注'),
            selected: _onlyFollowed,
            onSelected: (v) {
              setState(() => _onlyFollowed = v);
              _load();
            },
          ),
        ],
      ),
      body: _feeds.isEmpty
          ? const Center(child: Text('暂无动态'))
          : ListView.builder(
              itemCount: _feeds.length,
              itemBuilder: (_, i) {
                final f = _feeds[i];
                return Card(
                  child: ListTile(
                    title: Text(f.title),
                    subtitle: Text('${f.teamName}\n${f.content}'),
                    isThreeLine: true,
                  ),
                );
              },
            ),
    );
  }
}
