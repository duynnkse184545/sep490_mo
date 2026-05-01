import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/member/data/models/join_questions_models.dart';

part 'join_with_questions_state.freezed.dart';

@freezed
sealed class JoinWithQuestionsState with _$JoinWithQuestionsState {
  const factory JoinWithQuestionsState.ready(List<JoinQuestions> questions) = _Ready;
  const factory JoinWithQuestionsState.empty() = _Empty;
}
