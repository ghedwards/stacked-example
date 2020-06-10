// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:my_app/services/api.dart';
import 'package:my_app/services/auth_service.dart';
import 'package:my_app/services/counter_service.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_app/services/third_party_services_module.dart';
import 'package:my_app/services/media_service.dart';
import 'package:my_app/services/posts_service.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  g.registerLazySingleton<Api>(() => Api());
  g.registerLazySingleton<AuthService>(() => AuthService());
  g.registerLazySingleton<CounterService>(() => CounterService());
  g.registerLazySingleton<DialogService>(
      () => thirdPartyServicesModule.dialogService);
  g.registerLazySingleton<MediaService>(() => MediaService());
  g.registerLazySingleton<NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  g.registerLazySingleton<PostsService>(() => PostsService());
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
}
