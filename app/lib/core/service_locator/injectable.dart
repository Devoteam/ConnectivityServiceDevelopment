import 'package:connect_service_app/core/service_locator/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
GetIt configureDependencies() => getIt.init(environment: 'dev');
