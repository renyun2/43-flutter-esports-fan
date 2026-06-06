import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/providers/providers.dart';

class RecapScreen extends ConsumerStatefulWidget {
  const RecapScreen({super.key, required this.matchId});

  final String matchId;

  @override
  ConsumerState<RecapScreen> createState() => _RecapScreenState();
}

class _RecapScreenState extends ConsumerState<RecapScreen> {
  String? _content;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final text = await api.getRecap(int.parse(widget.matchId));
    setState(() => _content = text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('战报复盘')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: _content == null
            ? const Center(child: CircularProgressIndicator())
            : Text(_content!, style: const TextStyle(fontSize: 16, height: 1.6)),
      ),
    );
  }
}
