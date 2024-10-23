import 'package:flutter/material.dart';

import '../../../common/presentation/dashboard_card.dart';

class DashBoardPage extends StatelessWidget{
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          DashboardCard(),
          DashboardCard(),
          DashboardCard(),
          DashboardCard(),
          DashboardCard(),
          DashboardCard(),
        ]
      ),
    );
  }

}