import 'package:connect_service_app/feature/dashboard/domain/service/dashboard_service.dart';
import 'package:connect_service_app/feature/dashboard/presentation/cubit/dashboard_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final DashboardService _dashboardService;

  DashboardCubit(
    this._dashboardService,
  ) : super(
          const DashboardLoading(),
        );

  void init() async {
    _dashboardService.readProducts().then(
      (entries) {
        emit(
          DashboardContent(entries),
        );
      },
    ).onError(
      (e, s) {
        emit(
          const DashboardError(),
        );
      },
    );
  }
}
