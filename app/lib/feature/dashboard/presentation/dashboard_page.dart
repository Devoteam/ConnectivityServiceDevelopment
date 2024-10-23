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
        shellNavigationLoading: () => const Center(
          child: Scaffold(
            body: CircularProgressIndicator(),
          ),
        ),
        shellNavigationError: () => const Scaffold(
          body: Center(
            child: Text('oops'),
          ),
        ),
        shellNavigationContent: (_) => DashboardContentWithNavDrawer(
          onNacDrawerEntryClicked: (index) {
            controller.animateTo(
              index * 200,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
            );
          },
          child: ListView.builder(
            controller: controller,
            itemCount: 6,
            itemBuilder: (_, i) {
              return const DashboardCard();
            },
          ),
        ),
      );
    });
  }
}
