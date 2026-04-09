import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';

part 'member_detail_state.freezed.dart';

@freezed
sealed class MemberDetailState with _$MemberDetailState {
  const factory MemberDetailState.initial() = _Initial;
  const factory MemberDetailState.loading() = _Loading;
  const factory MemberDetailState.loaded(Member member) = _Loaded;
  const factory MemberDetailState.error(String message) = _Error;
}
