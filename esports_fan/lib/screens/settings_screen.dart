import 'package:flutter/material.dart';
import 'package:esports_fan/config/api_config.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notifyMatch = true;
  bool _notifyFeed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('设置')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('开赛提醒（站内消息）'),
            value: _notifyMatch,
            onChanged: (v) => setState(() => _notifyMatch = v),
          ),
          SwitchListTile(
            title: const Text('战队动态通知'),
            value: _notifyFeed,
            onChanged: (v) => setState(() => _notifyFeed = v),
          ),
          const ListTile(
            title: Text('API 地址'),
            subtitle: Text(apiBase),
          ),
          const ListTile(
            title: Text('版本'),
            subtitle: Text('1.0.0'),
          ),
        ],
      ),
    );
  }
}
