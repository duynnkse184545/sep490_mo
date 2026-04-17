import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';

part 'member_ban_state.freezed.dart';

@freezed
sealed class MemberBanState with _$MemberBanState {
  const factory MemberBanState.ready(List<MemberWithBans> members) = _Ready;
  const factory MemberBanState.loadingMore(List<MemberWithBans> members) = _LoadingMore;
  const factory MemberBanState.empty() = _Empty;
}
