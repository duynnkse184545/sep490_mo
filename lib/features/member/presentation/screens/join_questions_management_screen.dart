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
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              const SizedBox(height: 24),
              _buildRetroActionBtn(
                context, 
                label: 'ADD FIRST QUESTION', 
                icon: Icons.add, 
                onTap: () => _showAddEditDialog(context, controller)
              ),
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: showAppBar ? AppBar(
        title: const Text('JOIN QUESTIONS', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => _showAddEditDialog(context, controller),
            icon: const Icon(Icons.add_box_outlined),
            tooltip: 'Add Question',
          ),
        ],
      ) : null,
      body: content,
      floatingActionButton: !showAppBar ? FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () => _showAddEditDialog(context, controller),
        child: const Icon(Icons.add, color: Colors.white),
      ) : null,
    );
  }

  Widget _buildRetroActionBtn(BuildContext context, {required String label, required IconData icon, required VoidCallback onTap}) {
     return InkWell(
       onTap: onTap,
       child: Container(
         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
         decoration: BoxDecoration(
           color: Theme.of(context).colorScheme.primary,
           border: Border.all(color: AppColors.border, width: 2),
           borderRadius: BorderRadius.circular(8),
           boxShadow: const [
             BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
           ],
         ),
         child: Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             Icon(icon, color: Colors.white, size: 18),
             const SizedBox(width: 8),
             Text(label, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 12)),
           ],
         ),
       ),
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), 
          side: const BorderSide(color: AppColors.border, width: 2),
        ),
        title: Text(isEditing ? 'EDIT QUESTION' : 'ADD QUESTION', style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: contentController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Question Content',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: orderController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Order Number',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CANCEL', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
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
            child: Text(isEditing ? 'UPDATE' : 'ADD'),
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), 
          side: const BorderSide(color: AppColors.border, width: 2),
        ),
        title: const Text('DELETE QUESTION?', style: TextStyle(fontWeight: FontWeight.w900)),
        content: Text('Are you sure you want to delete: "${question.content}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CANCEL'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
            onPressed: () async {
              final success = await controller.deleteQuestion(question.id);
              if (success && context.mounted) {
                Navigator.pop(context);
              }
            },
            child: const Text('DELETE'),
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
      margin: const EdgeInsets.only(bottom: 16, left: 4, right: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(color: AppColors.border, offset: Offset(6, 6)),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.1),
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primary, width: 1.5),
          ),
          child: Text(
            question.orderNumber.toString(),
            style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w900, fontSize: 16),
          ),
        ),
        title: Text(
          question.content,
          style: const TextStyle(fontWeight: FontWeight.w900, color: Color(0xFF323232), fontSize: 15),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit_outlined, color: Colors.blue, size: 20),
              onPressed: onEdit,
            ),
            IconButton(
              icon: const Icon(Icons.delete_outline, color: Colors.red, size: 20),
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}
