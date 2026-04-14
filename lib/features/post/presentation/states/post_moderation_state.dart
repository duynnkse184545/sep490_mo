import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

part 'post_moderation_state.freezed.dart';

@freezed
sealed class PostModerationState with _$PostModerationState {
  const factory PostModerationState.ready(List<PostModeration> posts) = _Ready;
  const factory PostModerationState.loadingMore(List<PostModeration> posts) = _LoadingMore;
  const factory PostModerationState.empty() = _Empty;
}
