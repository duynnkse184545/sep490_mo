import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';
import 'package:sep490_mo/features/fanhub/data/providers/fanhub_providers.dart';

part 'fanhub_analytics_controller.g.dart';

@riverpod
class FanHubAnalyticsController extends _$FanHubAnalyticsController {
  @override
  Future<FanHubAnalytics> build({required int fanHubId}) async {
    final result = await ref
        .read(fanHubRepositoryProvider)
        .getFanHubAnalytics(fanHubId)
        .run();

    return result.fold(
      (failure) => throw failure,
      (analytics) => analytics,
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    ref.invalidateSelf();
    await future;
  }
}
