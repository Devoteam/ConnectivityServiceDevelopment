import 'package:connect_service_app/common/presentation/dashboard_card.dart';
import 'package:connect_service_app/feature/dashboard/presentation/widget/dashboard_nav_drawer.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({
    super.key,
  });

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int currentIndex = 0;
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return DashBoardNavDrawer(
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
    );
  }
}
