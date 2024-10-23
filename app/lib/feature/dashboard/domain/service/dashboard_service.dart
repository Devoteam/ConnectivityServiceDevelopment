import 'package:injectable/injectable.dart';

import '../entity/dashboard_entry.dart';
import '../repository/dashboard_repository.dart';

@lazySingleton
class DashboardService {
  final DashboardRepository _dashboardRepository;

  DashboardService(
    this._dashboardRepository,
  );

  Future<List<DashboardEntry>> readProducts() => _dashboardRepository.readProducts();
}
