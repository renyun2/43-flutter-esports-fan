import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:esports_fan/services/api_service.dart';

final authTokenProvider = StateProvider<String?>((ref) => null);

final apiServiceProvider = Provider<ApiService>((ref) {
  final token = ref.watch(authTokenProvider);
  return ApiService(token);
});
