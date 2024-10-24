import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'dashboard_card_state.dart';

@injectable
class DashboardCardCubit extends Cubit<DashboardCardState> {
  DashboardCardCubit()
      : super(
          DashboardCardState.dashboardLoading(),
        );

  void setInitialState(bool isActive){
    emit(
      DashboardCardState.dashboardContent(isActive),
    );
  }

  void onSubscribedClicked() async {
    emit(
      DashboardCardState.dashboardLoading(),
    );

   await Future.delayed(
      Duration(
        seconds: 1,
      ),
    );

    emit(
      DashboardCardState.dashboardContent(true),
    );
  }
}
