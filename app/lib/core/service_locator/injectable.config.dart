// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connect_service_app/core/http_client/http_client.dart' as _i476;
import 'package:connect_service_app/core/http_client/http_client_impl.dart'
    as _i850;
import 'package:connect_service_app/core/service_locator/http_module.dart'
    as _i520;
import 'package:connect_service_app/feature/dashboard/data/mapper/dashboard_entry_mapper.dart'
    as _i812;
import 'package:connect_service_app/feature/dashboard/data/repository/dashboard_repository_impl.dart'
    as _i737;
import 'package:connect_service_app/feature/dashboard/domain/repository/dashboard_repository.dart'
    as _i152;
import 'package:connect_service_app/feature/dashboard/domain/service/dashboard_service.dart'
    as _i538;
import 'package:connect_service_app/feature/dashboard/presentation/cubit/dashboard_card_cubit.dart'
    as _i763;
import 'package:connect_service_app/feature/dashboard/presentation/cubit/dashboard_cubit.dart'
    as _i48;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

const String _dev = 'dev';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final httpModule = _$HttpModule();
    gh.factory<_i763.DashboardCardCubit>(() => _i763.DashboardCardCubit());
    gh.lazySingleton<_i812.DashboardEntryMapper>(
        () => _i812.DashboardEntryMapper());
    gh.factory<String>(
      () => httpModule.provideDevBaseUrl(),
      instanceName: 'BASE_URL',
      registerFor: {_dev},
    );
    gh.lazySingleton<_i361.BaseOptions>(
      () => httpModule
          .provideDevBaseOptions(gh<String>(instanceName: 'BASE_URL')),
      instanceName: 'BASE_OPTIONS',
    );
    gh.lazySingleton<_i361.Dio>(
      () => httpModule.dio(gh<_i361.BaseOptions>(instanceName: 'BASE_OPTIONS')),
      instanceName: 'BASE_DIO_CLIENT',
    );
    gh.lazySingleton<_i476.HttpClient>(
      () =>
          _i850.HttpClientImpl(gh<_i361.Dio>(instanceName: 'BASE_DIO_CLIENT')),
      instanceName: 'BASE_HTTP_CLIENT',
    );
    gh.lazySingleton<_i152.DashboardRepository>(
        () => _i737.DashboardRepositoryImpl(
              gh<_i476.HttpClient>(instanceName: 'BASE_HTTP_CLIENT'),
              gh<_i812.DashboardEntryMapper>(),
            ));
    gh.lazySingleton<_i538.DashboardService>(
        () => _i538.DashboardService(gh<_i152.DashboardRepository>()));
    gh.factory<_i48.DashboardCubit>(
        () => _i48.DashboardCubit(gh<_i538.DashboardService>()));
    return this;
  }
}

class _$HttpModule extends _i520.HttpModule {}
