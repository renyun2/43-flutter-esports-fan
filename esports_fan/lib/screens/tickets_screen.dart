import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/models/models.dart';
import 'package:esports_fan/providers/providers.dart';

class TicketsScreen extends ConsumerStatefulWidget {
  const TicketsScreen({super.key});

  @override
  ConsumerState<TicketsScreen> createState() => _TicketsScreenState();
}

class _TicketsScreenState extends ConsumerState<TicketsScreen> {
  List<TicketEvent> _events = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final api = ref.read(apiServiceProvider);
    final data = await api.getTickets();
    setState(() => _events = data);
  }

  String _ticketCode(TicketEvent e) {
    return 'TKT-${e.id}-${e.teamId ?? 0}-${e.eventDate.substring(0, 10).replaceAll('-', '')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('线下观赛票')),
      body: ListView.builder(
        itemCount: _events.length,
        itemBuilder: (_, i) {
          final e = _events[i];
          return Card(
            child: ListTile(
              title: Text(e.title),
              subtitle: Text('${e.venue}\n${e.eventDate}'),
              isThreeLine: true,
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${e.price} 积分'),
                  Text(_ticketCode(e), style: const TextStyle(fontSize: 10)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
