import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

part 'feed_state.freezed.dart';

@freezed
sealed class FeedState with _$FeedState {
  const factory FeedState.ready(List<Post> posts) = _Ready;
  const factory FeedState.refreshing(List<Post> posts) = _Refreshing;
  const factory FeedState.loadingMore(List<Post> posts) = _LoadingMore;
  // const factory FeedState.offline(List<Post> posts) = _Offline; not needed for current without cursor
  const factory FeedState.empty() = _Empty;
}