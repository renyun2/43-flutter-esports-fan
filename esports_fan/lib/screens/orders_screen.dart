import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class OrdersScreen extends ConsumerStatefulWidget {
  const OrdersScreen({super.key});

  @override
  ConsumerState<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends ConsumerState<OrdersScreen> {
  List<Order> _orders = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final data = await api.getOrders();
    setState(() => _orders = data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('我的订单')),
      body: _orders.isEmpty
          ? const Center(child: Text('暂无订单'))
          : ListView.builder(
              itemCount: _orders.length,
              itemBuilder: (_, i) {
                final o = _orders[i];
                return ListTile(
                  title: Text(o.merchName ?? '商品 #${o.merchId}'),
                  subtitle: Text('${o.createdAt} · x${o.quantity}'),
                  trailing: Text('${o.totalPrice} 分'),
                );
              },
            ),
    );
  }
}
