import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:esports_fan/providers/providers.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entries = [
      ('积分中心', '/points'),
      ('粉丝勋章', '/badges'),
      ('我的关注', '/following'),
      ('选手动态', '/feeds'),
      ('应援商城', '/merch'),
      ('我的订单', '/orders'),
      ('线下票务', '/tickets'),
      ('消息', '/messages'),
      ('设置', '/settings'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('个人中心')),
      body: ListView(
        children: [
          for (final e in entries)
            ListTile(
              title: Text(e.$1),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => context.push(e.$2),
            ),
          ListTile(
            title: const Text('退出登录'),
            onTap: () {
              ref.read(authTokenProvider.notifier).state = null;
              context.go('/login');
            },
          ),
        ],
      ),
    );
  }
}
