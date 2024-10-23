import 'package:connect_service_app/feature/dashboard/domain/entity/dashboard_entry.dart';

abstract class DashboardRepository {
  Future<List<DashboardEntry>> readProducts();
}
