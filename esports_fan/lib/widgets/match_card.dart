import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:esports_fan/models/models.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({super.key, required this.match});

  final Match match;

  Color _statusColor() {
    switch (match.status) {
      case 'live':
        return Colors.red;
      case 'finished':
        return Colors.grey;
      default:
        return Colors.blue;
    }
  }

  String _statusLabel() {
    switch (match.status) {
      case 'live':
        return '进行中';
      case 'finished':
        return '已结束';
      default:
        return '未开赛';
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLive = match.status == 'live';
    return Card(
      color: isLive ? Colors.red.shade50 : null,
      child: ListTile(
        title: Text('${match.teamA?.name ?? 'A'} vs ${match.teamB?.name ?? 'B'}'),
        subtitle: Text('${match.game} · ${match.tournament}'),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${match.scoreA} : ${match.scoreB}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isLive ? Colors.red : null,
              ),
            ),
            Text(_statusLabel(), style: TextStyle(color: _statusColor(), fontSize: 12)),
          ],
        ),
        onTap: () => context.push('/match/${match.id}'),
      ),
    );
  }
}
