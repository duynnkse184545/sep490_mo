import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';

part 'ban_state.freezed.dart';

@freezed
sealed class BanState with _$BanState {
  const factory BanState.ready(List<Member> members) = _Ready;
  const factory BanState.loadingMore(List<Member> members) = _LoadingMore;
  const factory BanState.empty() = _Empty;
}
