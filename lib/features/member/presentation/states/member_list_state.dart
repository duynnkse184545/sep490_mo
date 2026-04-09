import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';

part 'member_list_state.freezed.dart';

@freezed
sealed class MemberListState with _$MemberListState {
  const factory MemberListState.ready(List<Member> members) = _Ready;
  const factory MemberListState.loadingMore(List<Member> members) = _LoadingMore;
  const factory MemberListState.empty() = _Empty;
}
