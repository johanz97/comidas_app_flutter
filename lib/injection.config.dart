// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/product/i_product_repository.dart' as _i4;
import 'infrastructure/product/product_repository.dart' as _i5;
import 'logic/details/details_cubit.dart' as _i3;
import 'logic/home/home_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.DetailsCubit>(() => _i3.DetailsCubit());
  gh.lazySingleton<_i4.IProductRepository>(() => _i5.ProductRepository());
  gh.factory<_i6.HomeBloc>(() => _i6.HomeBloc(get<_i4.IProductRepository>()));
  return get;
}
