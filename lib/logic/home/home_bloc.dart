import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/product/i_product_repository.dart';
import '../../domain/product/product.dart';
import '../../domain/product/product_failure.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IProductRepository _productRepository;
  HomeBloc(this._productRepository) : super(const HomeState.initial()) {
    on<Initialize>(_getData);
  }

  FutureOr<void> _getData(Initialize event, Emitter<HomeState> emit) async {
    emit(const HomeState.loadInProgress());
    final failureOrEvent = await _productRepository.getData();
    emit(
      failureOrEvent.fold(
        (failure) => HomeState.failure(failure),
        (event) => HomeState.success(event),
      ),
    );
  }
}
