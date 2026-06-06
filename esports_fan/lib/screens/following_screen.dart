import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class FollowingScreen extends ConsumerStatefulWidget {
  const FollowingScreen({super.key});

  @override
  ConsumerState<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends ConsumerState<FollowingScreen> {
  List<Follow> _follows = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final data = await api.getFollows();
    setState(() => _follows = data);
  }

  Future<void> _unfollow(Follow f) async {
    final api = ref.read(apiServiceProvider);
    await api.unfollow(f.targetType, f.targetId);
    await _load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('我的关注')),
      body: _follows.isEmpty
          ? const Center(child: Text('暂无关注'))
          : ListView.builder(
              itemCount: _follows.length,
              itemBuilder: (_, i) {
                final f = _follows[i];
                final name = f.target?['name']?.toString() ?? '#${f.targetId}';
                return ListTile(
                  title: Text(name),
                  subtitle: Text(f.targetType == 'team' ? '战队' : '选手'),
                  trailing: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => _unfollow(f),
                  ),
                  onTap: () {
                    if (f.targetType == 'team') {
                      context.push('/team/${f.targetId}');
                    } else {
                      context.push('/player/${f.targetId}');
                    }
                  },
                );
              },
            ),
    );
  }
}
