import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/product/product.dart';

part 'details_state.dart';
part 'details_cubit.freezed.dart';

@injectable
class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsState.initial());

  Future<void> setIndex({required int index}) async {
    emit(state.copyWith(index: index));
  }

  Future<void> setProduct({
    required Product product,
    required bool isAdd,
  }) async {
    List<Product> listP = [];
    if (state.list.isNotEmpty) {
      if (isAdd) {
        listP = state.list;
        listP.add(product);
      } else {
        bool delete = false;
        for (final item in state.list) {
          if (!delete && item.id == product.id) {
            delete = true;
          } else {
            if (listP.isEmpty) {
              listP = [item];
            } else {
              listP.add(item);
            }
          }
        }
      }
    } else {
      listP = [product];
    }
    emit(state.copyWith(list: listP));
  }

  Future<void> setTotal({
    required double total,
    required int count,
  }) async {
    emit(
      state.copyWith(
        total: total,
        count: count,
      ),
    );
  }

  Future<void> clearData() async {
    emit(
      state.copyWith(
        total: 0,
        count: 0,
        list: [],
      ),
    );
  }
}
