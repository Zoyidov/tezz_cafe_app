import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/data/waitress/models/table_waitress/table_model_waitress.dart';
import 'package:tezz_cafe_app/data/waitress/repository/waitress_repository.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

part 'new_orders_event.dart';

part 'new_orders_state.dart';

class NewOrdersBloc extends Bloc<NewOrdersEvent, NewOrdersState> {
  final WaitressRepository _waitressRepository = getIt<WaitressRepository>();

  NewOrdersBloc() : super(NewOrdersState()) {
    on<FetchNewOrdersEvent>(_onFetchNewOrdersEvent);

  }

  Future<void> _onFetchNewOrdersEvent(FetchNewOrdersEvent event, Emitter<NewOrdersState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final waitress = StorageRepository.getString(StorageKeys.waiter);
    final tables = await _waitressRepository.getTables(waitress);
    tables.fold(
          (failure) => emit(state.copyWith(status: FormzSubmissionStatus.failure, failure: failure)),
          (tables) => emit(state.copyWith(status: FormzSubmissionStatus.success, tables: tables)),
    );
  }
}
