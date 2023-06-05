abstract class StatsState {
  final Map<String, dynamic>? stats;
  const StatsState({
    required this.stats,
  });
}

class StartStatsState extends StatsState {
  const StartStatsState({super.stats});
}

class LoadingStatsState extends StatsState {
  const LoadingStatsState({super.stats});
}

class LoadedStatsState extends StatsState {
  const LoadedStatsState({required super.stats});
}

class ErrorStatsState extends StatsState {
  final Error error;
  const ErrorStatsState({required this.error, required super.stats});
}

class SucessStatsState extends StatsState {
  const SucessStatsState({required super.stats});
}
