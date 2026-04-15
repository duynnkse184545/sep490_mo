import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';

part 'member_moderation_state.freezed.dart';

@freezed
sealed class MemberModerationState with _$MemberModerationState {
  const factory MemberModerationState.ready(List<MemberWithReports> members) = _Ready;
  const factory MemberModerationState.loadingMore(List<MemberWithReports> members) = _LoadingMore;
  const factory MemberModerationState.empty() = _Empty;
}
