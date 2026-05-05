import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sep490_mo/features/fanhub/presentation/screens/fanhub_analytics_screen.dart';
import 'package:sep490_mo/features/member/presentation/screens/join_questions_management_screen.dart';

class HubSettingsHomeScreen extends HookWidget {
  final String subdomain;
  final int fanHubId;
  final int initialTab;

  const HubSettingsHomeScreen({
    super.key,
    required this.subdomain,
    required this.fanHubId,
    this.initialTab = 0,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: initialTab,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'HUB SETTINGS',
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Analytics', icon: Icon(Icons.analytics_outlined)),
              Tab(text: 'Join Questions', icon: Icon(Icons.quiz_outlined)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FanHubAnalyticsScreen(fanHubId: fanHubId, showAppBar: false),
            JoinQuestionsManagementScreen(fanHubId: fanHubId, showAppBar: false),
          ],
        ),
      ),
    );
  }
}
