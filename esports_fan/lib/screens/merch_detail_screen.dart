import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class MerchDetailScreen extends ConsumerStatefulWidget {
  const MerchDetailScreen({super.key, required this.merchId});

  final String merchId;

  @override
  ConsumerState<MerchDetailScreen> createState() => _MerchDetailScreenState();
}

class _MerchDetailScreenState extends ConsumerState<MerchDetailScreen> {
  Merch? _item;
  String? _msg;

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final m = await api.getMerchItem(int.parse(widget.merchId));
    setState(() => _item = m);
  }

  Future<void> _buy() async {
    try {
      final api = ref.read(apiServiceProvider);
      await api.createOrder(int.parse(widget.merchId));
      setState(() => _msg = '下单成功！');
    } catch (_) {
      setState(() => _msg = '下单失败，积分可能不足');
    }
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  Widget build(BuildContext context) {
    final m = _item;
    if (m == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar: AppBar(title: Text(m.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(m.description ?? '', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text('价格: ${m.price} 积分'),
            Text('库存: ${m.stock}'),
            const Spacer(),
            FilledButton(onPressed: _buy, child: const Text('积分兑换')),
            if (_msg != null) Text(_msg!),
          ],
        ),
      ),
    );
  }
}
