import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/post/data/models/comment_models.dart';

part 'comment_state.freezed.dart';

@freezed
sealed class CommentState with _$CommentState {
  const factory CommentState.ready(List<Comment> comments) = _Ready;
  const factory CommentState.empty() = _Empty;
}
