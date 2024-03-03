import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/data/table/repository/table_repository.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';
part 'sent_order_event.dart';
part 'sent_order_state.dart';

class SentOrderBloc extends Bloc<SentOrderEvent, SentOrderState> {
  final TableRepository _tableRepository = getIt<TableRepository>();
  SentOrderBloc() : super(SentOrderState()) {
    on<SentActiveOrdersEvent>(_onSentActiveOrders);
  }

  FutureOr<void> _onSentActiveOrders(SentActiveOrdersEvent event, Emitter<SentOrderState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final order = await _tableRepository.sendOrder(tableId: event.tableId, activeOrderId: event.activeOrderId);
    order.fold(
      (l) => emit(state.copyWith(failure: l, status: FormzSubmissionStatus.failure)),
      (r) => emit(state.copyWith(status: FormzSubmissionStatus.success)),
    );

  }
}
