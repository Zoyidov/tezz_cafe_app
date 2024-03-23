import 'dart:async';

import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/data/table/repository/table_repository.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

part 'no_active_table_event.dart';

part 'no_active_table_state.dart';

class NoActiveTableBloc extends Bloc<NoActiveTableEvent, NoActiveTableState> {
  final TableRepository _tableRepository = getIt<TableRepository>();
  final PageController pageController = PageController();

  NoActiveTableBloc() : super(NoActiveTableState()) {
    on<FetchNoActiveTables>(_onFetchNoActiveTablesEvent);
    on<ChangeNoActiveTableEvent>(_onChangeTableEvent);
    on<RemoveNoActiveTableEvent>(_onRemoveTableEvent);
  }

  FutureOr<void> _onChangeTableEvent(ChangeNoActiveTableEvent event,
          Emitter<NoActiveTableState> emit) async =>
      pageController.animateToPage(event.index,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);

  void _onFetchNoActiveTablesEvent(
      FetchNoActiveTables event, Emitter<NoActiveTableState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final restaurantId = StorageRepository.getString(StorageKeys.restaurant);
    final tables =
        await _tableRepository.getTablesByRestaurantId(restaurantId, false);
    tables.fold(
      (l) => emit(
          state.copyWith(status: FormzSubmissionStatus.failure, failure: l)),
      (r) => emit(
          state.copyWith(status: FormzSubmissionStatus.success, tables: r)),
    );
  }

  FutureOr<void> _onRemoveTableEvent(
      RemoveNoActiveTableEvent event, Emitter<NoActiveTableState> emit) async {
    final tables = state.tables.toList();
    final index = tables.indexWhere((element) => element.id == event.tableId);
    tables.removeAt(index);
    emit(state.copyWith(tables: tables));
  }
}
