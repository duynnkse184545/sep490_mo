import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sep490_mo/features/post/data/models/report_models.dart';

part 'post_report_state.freezed.dart';

@freezed
sealed class PostReportState with _$PostReportState {
  const factory PostReportState.ready(List<PostWithReport> posts) = _Ready;
  const factory PostReportState.loadingMore(List<PostWithReport> posts) = _LoadingMore;
  const factory PostReportState.empty() = _Empty;
}
