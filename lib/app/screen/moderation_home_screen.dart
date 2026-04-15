import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sep490_mo/features/member/presentation/screens/member_moderation_screen.dart';
import 'package:sep490_mo/features/post/presentation/screens/post_moderation_screen.dart';
import 'package:sep490_mo/features/post/presentation/screens/post_report_screen.dart';

class ModerationHomeScreen extends HookWidget {
  final String subdomain;
  final int fanHubId;
  final int initialTab;

  const ModerationHomeScreen({
    super.key,
    required this.subdomain,
    required this.fanHubId,
    this.initialTab = 0,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTab,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Moderation'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Posts', icon: Icon(Icons.article)),
              Tab(text: 'Reports', icon: Icon(Icons.flag)),
              Tab(text: 'Member', icon: Icon(Icons.group),)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PostModerationScreen(subdomain: subdomain, fahHubId: fanHubId,),
            PostReportScreen(fanHubId: fanHubId),
            MemberModerationScreen(fanHubId: fanHubId),
          ],
        ),
      ),
    );
  }
}
