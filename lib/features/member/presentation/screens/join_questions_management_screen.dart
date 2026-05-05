import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/member/data/models/join_questions_models.dart';
import 'package:sep490_mo/features/member/presentation/controllers/join_questions_management_controller.dart';
import 'package:sep490_mo/features/member/presentation/states/join_with_questions_state.dart';

class JoinQuestionsManagementScreen extends HookConsumerWidget {
  final int fanHubId;
  final bool showAppBar;

  const JoinQuestionsManagementScreen({
    super.key,
    required this.fanHubId,
    this.showAppBar = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(joinQuestionsManagementControllerProvider(fanHubId: fanHubId));
    final controller = ref.read(joinQuestionsManagementControllerProvider(fanHubId: fanHubId).notifier);

    final content = stateAsync.when(
      loading: () => const Loader(),
      error: (error, stack) => ErrorBanner(
        message: error.toString(),
        onRetry: controller.refresh,
      ),
      data: (state) => state.when(
        ready: (questions) => RefreshIndicator(
          onRefresh: controller.refresh,
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: questions.length,
            itemBuilder: (context, index) {
              final question = questions[index];
              return _QuestionTile(
                question: question,
                onEdit: () => _showAddEditDialog(context, controller, question: question),
                onDelete: () => _showDeleteConfirm(context, controller, question),
              );
            },
          ),
        ),
        empty: () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.quiz_outlined, size: 64, color: Colors.grey),
              const SizedBox(height: 16),
              const Text(
                'No join questions yet.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () => _showAddEditDialog(context, controller),
                icon: const Icon(Icons.add),
                label: const Text('Add First Question'),
              ),
            ],
          ),
        ),
      ),
    );

    if (!showAppBar) {
      return Scaffold(
        body: content,
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showAddEditDialog(context, controller),
          child: const Icon(Icons.add),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Join Questions Settings'),
        actions: [
          IconButton(
            onPressed: () => _showAddEditDialog(context, controller),
            icon: const Icon(Icons.add),
            tooltip: 'Add Question',
          ),
        ],
      ),
      body: content,
    );
  }

  Future<void> _showAddEditDialog(
    BuildContext context,
    JoinQuestionsManagementController controller, {
    JoinQuestions? question,
  }) async {
    final contentController = TextEditingController(text: question?.content);
    final orderController = TextEditingController(text: question?.orderNumber.toString() ?? '1');
    final isEditing = question != null;

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(isEditing ? 'Edit Question' : 'Add Question'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: contentController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Question Content',
                hintText: 'Enter the question for new members',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: orderController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Order Number',
                hintText: 'Display order (1, 2, 3...)',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              final content = contentController.text.trim();
              final order = int.tryParse(orderController.text) ?? 1;
              if (content.isEmpty) return;

              bool success;
              if (isEditing) {
                success = await controller.updateQuestion(question.id, content, order);
              } else {
                success = await controller.addQuestion(content, order);
              }

              if (success && context.mounted) {
                Navigator.pop(context);
              }
            },
            child: Text(isEditing ? 'Update' : 'Add'),
          ),
        ],
      ),
    );
  }

  Future<void> _showDeleteConfirm(
    BuildContext context,
    JoinQuestionsManagementController controller,
    JoinQuestions question,
  ) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Question?'),
        content: Text('Are you sure you want to delete this question: "${question.content}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () async {
              final success = await controller.deleteQuestion(question.id);
              if (success && context.mounted) {
                Navigator.pop(context);
              }
            },
            child: const Text('Delete', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class _QuestionTile extends StatelessWidget {
  final JoinQuestions question;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _QuestionTile({
    required this.question,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.primary,
          child: Text(
            question.orderNumber.toString(),
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(
          question.content,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit_outlined, color: Colors.blue),
              onPressed: onEdit,
            ),
            IconButton(
              icon: const Icon(Icons.delete_outline, color: Colors.red),
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}
