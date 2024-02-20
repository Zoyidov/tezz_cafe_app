import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/data/product/models/product_model.dart';
import 'package:tezz_cafe_app/data/product/repository/product_repository.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

part 'product_event.dart';

part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository = getIt<ProductRepository>();

  ProductBloc() : super(const ProductState()) {
    on<FetchProductsEvent>(_onFetchProductsEvent);
  }

  FutureOr<void> _onFetchProductsEvent(FetchProductsEvent event, Emitter<ProductState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final restaurant = StorageRepository.getString(StorageKeys.restaurant);
    final products = await _productRepository.getProductsByRestaurantAndCategory(restaurant, event.categoryId);
    products.fold(
      (l) => emit(state.copyWith(failure: l, status: FormzSubmissionStatus.failure)),
      (r) => emit(state.copyWith(products: r, status: FormzSubmissionStatus.success)),
    );
  }
}
