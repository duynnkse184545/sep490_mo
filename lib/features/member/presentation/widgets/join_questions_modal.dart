import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/custom_button.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/member/data/models/join_questions_models.dart';
import 'package:sep490_mo/features/member/presentation/controllers/join_with_questions_controller.dart';
import 'package:sep490_mo/features/member/presentation/states/join_with_questions_state.dart';

class JoinQuestionsModal extends HookConsumerWidget {
  final int fanHubId;
  final VoidCallback? onSuccess;

  const JoinQuestionsModal({
    super.key,
    required this.fanHubId,
    this.onSuccess,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionsAsync = ref.watch(joinWithQuestionsControllerProvider(fanHubId: fanHubId));
    final controller = ref.read(joinWithQuestionsControllerProvider(fanHubId: fanHubId).notifier);
    
    // Using a Map to store answers: questionId -> content
    final answersMap = useState<Map<int, String>>({});

    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: AppColors.border, width: 2)),
            ),
            child: Row(
              children: [
                const Icon(Icons.quiz_outlined, color: AppColors.primary),
                const SizedBox(width: 12),
                const Text(
                  'Join Questions',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          ),

          // Questions List
          Flexible(
            child: questionsAsync.when(
              data: (state) => state.when(
                ready: (questions) => ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(16),
                  itemCount: questions.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 20),
                  itemBuilder: (context, index) {
                    final question = questions[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Q${index + 1}: ${question.content}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            hintText: 'Type your answer here...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(color: AppColors.border),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(color: AppColors.border),
                            ),
                          ),
                          onChanged: (value) {
                            final newMap = Map<int, String>.from(answersMap.value);
                            newMap[question.id] = value;
                            answersMap.value = newMap;
                          },
                        ),
                      ],
                    );
                  },
                ),
                empty: () => const Padding(
                  padding: EdgeInsets.all(32),
                  child: Center(child: Text('No questions required to join this hub.')),
                ),
              ),
              loading: () => const Padding(
                padding: EdgeInsets.all(32),
                child: Loader(),
              ),
              error: (error, _) => Padding(
                padding: const EdgeInsets.all(32),
                child: Center(child: Text('Error: $error')),
              ),
            ),
          ),

          // Submit Button
          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomButton(
              onPressed: questionsAsync.maybeWhen(
                data: (state) => state.maybeWhen(
                  ready: (questions) => () async {
                    final answersList = answersMap.value.entries.map((e) {
                      return JoinAnswersRequest(
                        questionId: e.key,
                        content: e.value,
                      );
                    }).toList();

                    if (answersList.length < questions.length) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please answer all questions.')),
                      );
                      return;
                    }

                    final success = await controller.submitAnswers(answersList);
                    if (success && context.mounted) {
                      Navigator.pop(context);
                      onSuccess?.call();
                    }
                  },
                  orElse: () => null,
                ),
                orElse: () => null,
              ),
              label: 'SUBMIT ANSWERS',
              isLoading: questionsAsync.isLoading,
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
