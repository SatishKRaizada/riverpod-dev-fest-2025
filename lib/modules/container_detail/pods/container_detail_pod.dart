import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dev_fest_2025/modules/dashboard/pods/dashboard_pod.dart';

final containerDetailProvider = FutureProvider.family((ref, String id) async {
  final containers = await ref.read(containersProvider.future);
  final detail = containers.firstWhere((element) => element.id == id);
  return detail;
});
