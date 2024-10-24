import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        dashboardError: () => const Scaffold(
          body: Center(
            child: Text('oops'),
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
              return DashboardCard(dashboardEntry: dashboardEntries[i]);
            },
          ),
        ),
      );
    });
  }
}
