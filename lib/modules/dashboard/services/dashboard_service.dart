import 'package:flutter/services.dart';

class DashboardService {
  Future<String> fetchDashboardData() async {
    final jsonString = await rootBundle.loadString('assets/data/containers.json');
    return jsonString;
  }
}
