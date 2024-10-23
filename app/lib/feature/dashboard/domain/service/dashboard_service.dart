import 'package:connect_service_app/feature/dashboard/domain/repository/dashboard_repository.dart';
import 'package:injectable/injectable.dart';

import '../entity/dashboard_entry.dart';

@lazySingleton
class DashboardService {
  final DashboardRepository _dashboardRepository;

  DashboardService(
    this._dashboardRepository,
  );

  Future<List<DashboardEntry>> readProducts() => _dashboardRepository.readProducts();
}
