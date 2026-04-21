import 'package:freezed_annotation/freezed_annotation.dart';

part 'vtuber_models.freezed.dart';
part 'vtuber_models.g.dart';

enum VtuberApplicationStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('APPROVED')
  approved,
  @JsonValue('REJECTED')
  rejected,
}

@freezed
abstract class VtuberApplication with _$VtuberApplication {
  const factory VtuberApplication({
    required int id,
    required int userId,
    required String username,
    required String channelName,
    required String channelLink,
    required VtuberApplicationStatus status,
    String? reason,
    int? reviewerId,
    String? reviewerUsername,
    required DateTime createdAt,
    DateTime? reviewAt,
  }) = _VtuberApplication;

  factory VtuberApplication.fromJson(Map<String, dynamic> json) =>
      _$VtuberApplicationFromJson(json);
}

@freezed
abstract class VtuberRegisterRequest with _$VtuberRegisterRequest {
  const factory VtuberRegisterRequest({
    required String channelName,
    required String channelLink,
  }) = _VtuberRegisterRequest;

  factory VtuberRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$VtuberRegisterRequestFromJson(json);
}
