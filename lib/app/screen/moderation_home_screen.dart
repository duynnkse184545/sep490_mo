import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sep490_mo/features/member/presentation/screens/member_moderation_screen.dart';
import 'package:sep490_mo/features/member/presentation/screens/banned_member_screen.dart';
import 'package:sep490_mo/features/member/presentation/screens/pending_member_screen.dart';
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
      length: 5,
      initialIndex: initialTab,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'MODERATION',
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
          ),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Pending Posts', icon: Icon(Icons.article_outlined)),
              Tab(text: 'Join Requests', icon: Icon(Icons.person_add_outlined)),
              Tab(text: 'Post Reports', icon: Icon(Icons.flag_outlined)),
              Tab(text: 'Member Reports', icon: Icon(Icons.report_problem_outlined)),
              Tab(text: 'Banned', icon: Icon(Icons.block)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PostModerationScreen(subdomain: subdomain, fahHubId: fanHubId,),
            PendingMemberScreen(fanHubId: fanHubId),
            PostReportScreen(fanHubId: fanHubId),
            MemberModerationScreen(fanHubId: fanHubId),
            BannedMemberScreen(fanHubId: fanHubId),
          ],
        ),
      ),
    );
  }
}
