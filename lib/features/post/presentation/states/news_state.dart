import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

part 'news_state.freezed.dart';

@freezed
sealed class NewsState with _$NewsState {
  const factory NewsState.ready(List<Post> posts) = _Ready;
  const factory NewsState.loadingMore(List<Post> posts) = _LoadingMore;
  const factory NewsState.empty() = _Empty;
  const factory NewsState.notJoinedAnyHub() = _NotJoinedAnyHub;
}
