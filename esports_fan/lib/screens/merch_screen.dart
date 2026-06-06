import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class MerchScreen extends ConsumerStatefulWidget {
  const MerchScreen({super.key});

  @override
  ConsumerState<MerchScreen> createState() => _MerchScreenState();
}

class _MerchScreenState extends ConsumerState<MerchScreen> {
  List<Merch> _items = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final data = await api.getMerch();
    setState(() => _items = data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('应援商城')),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (_, i) {
          final m = _items[i];
          return ListTile(
            title: Text(m.name),
            subtitle: Text(m.teamName ?? '通用'),
            trailing: Text('${m.price} 积分'),
            onTap: () => context.push('/merch/${m.id}'),
          );
        },
      ),
    );
  }
}
