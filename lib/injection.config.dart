// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_mvvm_ddd_bloc/core/network/network_info.dart' as _i796;
import 'package:flutter_mvvm_ddd_bloc/data/datasources/remote/post_remote_datasource.dart'
    as _i408;
import 'package:flutter_mvvm_ddd_bloc/data/repositories/post_repository_impl.dart'
    as _i571;
import 'package:flutter_mvvm_ddd_bloc/domain/repositories/post_repository.dart'
    as _i939;
import 'package:flutter_mvvm_ddd_bloc/domain/usecases/get_posts.dart' as _i797;
import 'package:flutter_mvvm_ddd_bloc/presentation/screens/home/bloc/home_bloc.dart'
    as _i724;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

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
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i408.PostRemoteDataSource>(
        () => _i408.PostRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i939.PostRepository>(
        () => _i571.PostRepositoryImpl(gh<_i408.PostRemoteDataSource>()));
    gh.lazySingleton<_i797.GetPosts>(
        () => _i797.GetPosts(gh<_i939.PostRepository>()));
    gh.factory<_i724.HomeBloc>(() => _i724.HomeBloc(gh<_i797.GetPosts>()));
    return this;
  }
}

class _$RegisterModule extends _i796.RegisterModule {}
