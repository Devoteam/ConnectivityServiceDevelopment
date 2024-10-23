import 'package:connect_service_app/feature/dashboard/data/mapper/dashboard_entry_mapper.dart';
import 'package:connect_service_app/feature/dashboard/domain/entity/dashboard_entry.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/data/json_mapper.dart';
import '../../../../constants.dart';
import '../../../../core/http_client/http_client.dart';
import '../../domain/repository/dashboard_repository.dart';
import '../model/dashboard_entry_model.dart';

@LazySingleton(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  final HttpClient _httpClient;
  final DashboardEntryMapper _dashboardEntryMapper;

  DashboardRepositoryImpl(
    @Named(kBaseHttpClient) this._httpClient,
    this._dashboardEntryMapper,
  );

  @override
  Future<List<DashboardEntry>> readProducts() {
    return _httpClient
        .getList<DashboardEntryModel>(
      '/products',
      mapper: JsonMapper<DashboardEntryModel>.from(
        (json) => DashboardEntryModel.fromJson(json),
      ),
    )
        .then(
      (result) {
        return result
                ?.map(
                  _dashboardEntryMapper.toEntity,
                )
                .toList() ??
            [];
      },
    );
  }
}
