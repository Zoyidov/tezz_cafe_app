import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/data/category/models/category_model.dart';
import 'package:tezz_cafe_app/data/category/repository/category_repository.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

part 'category_event.dart';

part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository _categoryRepository = getIt<CategoryRepository>();

  CategoryBloc() : super(const CategoryState()) {
    on<FetchCategoriesEvent>(_fetchCategoriesEvent);
  }

  FutureOr<void> _fetchCategoriesEvent(
      FetchCategoriesEvent event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final restaurantId = StorageRepository.getString(StorageKeys.restaurant);
    final categories = await _categoryRepository.getAllCategories(restaurantId);
    categories.fold(
      (failure) => emit(state.copyWith(
          status: FormzSubmissionStatus.failure, failure: failure)),
      (categories) => emit(state.copyWith(
          status: FormzSubmissionStatus.success, categories: categories)),
    );
  }
}
