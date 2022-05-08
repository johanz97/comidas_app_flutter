part of 'details_cubit.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState({
    required int index,
    required int count,
    required double total,
    required List<Product> list,
  }) = _Initial;

  factory DetailsState.initial() => const DetailsState(
        index: 0,
        count: 0,
        total: 0,
        list: [],
      );
}
