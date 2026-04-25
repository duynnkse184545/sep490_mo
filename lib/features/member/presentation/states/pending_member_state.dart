import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';

part 'pending_member_state.freezed.dart';

@freezed
sealed class PendingMemberState with _$PendingMemberState {
  const factory PendingMemberState.ready(List<Member> members) = _Ready;
  const factory PendingMemberState.loadingMore(List<Member> members) = _LoadingMore;
  const factory PendingMemberState.empty() = _Empty;
}
