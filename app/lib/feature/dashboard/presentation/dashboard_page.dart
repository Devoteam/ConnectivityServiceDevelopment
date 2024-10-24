import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/service_locator/injectable.dart';
import 'cubit/dashboard_card_cubit.dart';
import 'cubit/dashboard_cubit.dart';
import 'cubit/dashboard_state.dart';
import 'widget/dashboard_card.dart';
import 'widget/dashboard_content_with_nav_drawer.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({
    super.key,
  });

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();

    BlocProvider.of<DashboardCubit>(context).init();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(builder: (context, state) {
      return state.when(
        dashboardLoading: () => const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        dashboardError: () => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.errorOnLoadingProducts,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () => BlocProvider.of<DashboardCubit>(context).init(),
                  child: Text(
                    AppLocalizations.of(context)!.retry,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
        ),
        dashboardContent: (
          navDrawerEntries,
          dashboardEntries,
        ) =>
            DashboardContentWithNavDrawer(
          navDrawerEntries: navDrawerEntries,
          onNacDrawerEntryClicked: (index) {
            controller.animateTo(
              index * 200,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
            );
          },
          child: ListView.builder(
            controller: controller,
            itemCount: dashboardEntries.length,
            itemBuilder: (_, i) {
              return BlocProvider(
                create: (BuildContext context) => getIt.get<DashboardCardCubit>(),
                child: DashboardCard(isActive: i % 2 == 0, dashboardEntry: dashboardEntries[i]),
              );
            },
          ),
        ),
      );
    });
  }
}
