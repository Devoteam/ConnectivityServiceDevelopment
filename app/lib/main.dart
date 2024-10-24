import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//import 'core/car_ux_restrictions/car_ux_restrictions_manager.dart';
import 'core/service_locator/injectable.dart';
import 'feature/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'feature/dashboard/presentation/dashboard_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();
  //CarUxRestrictionsManager.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (BuildContext context) => getIt.get<DashboardCubit>(),
        child: const DashBoardPage(),
      ),
    );
  }
}
