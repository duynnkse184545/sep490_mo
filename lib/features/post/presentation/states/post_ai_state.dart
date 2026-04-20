import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

part 'post_ai_state.freezed.dart';

@freezed
sealed class PostAIState with _$PostAIState {
  const factory PostAIState.idle() = _Idle;
  const factory PostAIState.loading() = _Loading;
  const factory PostAIState.summarized(SummaryResponse summary) = _Summarized;
  const factory PostAIState.translated(TranslationResponse translation) = _Translated;
  const factory PostAIState.error(String message) = _Error;
}
