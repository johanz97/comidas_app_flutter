part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loadInProgress() = _LoadInProgress;
  const factory HomeState.success(List<Product> products) = _Success;
  const factory HomeState.failure(ProductFailure failure) = _Failure;
}
