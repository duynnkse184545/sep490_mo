import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

part 'bookmark_state.freezed.dart';

@freezed
sealed class BookmarkState with _$BookmarkState {
  const factory BookmarkState.ready(List<Post> posts) = _Ready;
  const factory BookmarkState.loadingMore(List<Post> posts) = _LoadingMore;
  const factory BookmarkState.empty() = _Empty;
}
