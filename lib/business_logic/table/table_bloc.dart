import 'dart:async';

import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/data/table/repository/table_repository.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'table_event.dart';

part 'table_state.dart';

class TableBloc extends Bloc<TableEvent, TableState> {
  final TableRepository _tableRepository = getIt<TableRepository>();
final PageController pageController = PageController();
  TableBloc() : super(const TableState()) {
    on<GetAllTablesEvent>(_onGetAllTablesEvent);
    on<ChangeTableEvent>(_onChangeTableEvent);
  }

  FutureOr<void> _onChangeTableEvent(ChangeTableEvent event, Emitter<TableState> emit) async => pageController.animateToPage(event.index, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);

  FutureOr<void> _onGetAllTablesEvent(GetAllTablesEvent event, Emitter<TableState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final restaurantId = StorageRepository.getString(StorageKeys.restaurant);
    final tables = await _tableRepository.getTablesByRestaurantId(restaurantId);
    tables.fold(
      (l) => emit(state.copyWith(status: FormzSubmissionStatus.failure, failure: l)),
      (r) => emit(state.copyWith(status: FormzSubmissionStatus.success, tables: r)),
    );
  }
}
