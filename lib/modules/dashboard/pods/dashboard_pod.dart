import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dev_fest_2025/core/utilities/retry_util.dart';
import 'package:dev_fest_2025/modules/dashboard/models/dashboard_model.dart';
import 'package:dev_fest_2025/modules/dashboard/repository/dashboard_repository.dart';

final containersProvider = FutureProvider<List<ContainersModel>>(retry: myRetry, (ref) async {
  final repository = ref.read(containerRepositoryProvider);
  final data = await repository.getContainers();
  return data;
});
