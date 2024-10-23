import '../entity/dashboard_entry.dart';

abstract class DashboardRepository {
  Future<List<DashboardEntry>> readProducts();
}
