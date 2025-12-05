import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dev_fest_2025/modules/dashboard/models/dashboard_model.dart';
import 'package:dev_fest_2025/modules/dashboard/services/dashboard_service.dart';

class DashboardRepository {
  final DashboardService service;
  DashboardRepository({required this.service});

  Future<List<ContainersModel>> getContainers() async {
    await Future.delayed(const Duration(seconds: 5));
    final data = await service.fetchDashboardData();
    final result = containersModelFromJson(data);
    return result;
  }
}

final containerRepositoryProvider = Provider((ref) => DashboardRepository(service: DashboardService()));
