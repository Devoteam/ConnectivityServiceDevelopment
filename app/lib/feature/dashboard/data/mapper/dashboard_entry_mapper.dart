import 'package:injectable/injectable.dart';

import '../../domain/entity/dashboard_entry.dart';
import '../model/dashboard_entry_model.dart';

@lazySingleton
class DashboardEntryMapper {
  DashboardEntry toEntity(DashboardEntryModel model) {
    return DashboardEntry(
      id: model.id,
      category: model.category,
      name: model.name,
      description: model.description,
    );
  }
}
