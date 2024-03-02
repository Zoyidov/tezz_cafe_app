import 'dart:async';

import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/data/waitress/models/waitress_order/table_orders.dart';
import 'package:tezz_cafe_app/data/waitress/repository/waitress_repository.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

part 'approved_event.dart';

part 'approved_state.dart';

class ApprovedBloc extends Bloc<ApprovedEvent, ApprovedState> {
  final WaitressRepository _waitressRepository = getIt<WaitressRepository>();

  ApprovedBloc() : super(const ApprovedState()) {
    on<FetchApprovedOrder>(_onFetchApprovedOrder);
    on<DeleteApprovedOrder>(_deleteOrder);
  }

  FutureOr<void> _onFetchApprovedOrder(FetchApprovedOrder event, Emitter<ApprovedState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final order = await _waitressRepository.getOrders(event.tableId);
    order.fold(
      (l) => emit(state.copyWith(failure: l, status: FormzSubmissionStatus.failure)),
      (r) => emit(state.copyWith(order: r, status: FormzSubmissionStatus.success)),
    );
  }

  FutureOr<void> _deleteOrder(DeleteApprovedOrder event, Emitter<ApprovedState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final order = await _waitressRepository.deleteOrder(event.tableId, event.productId, event.quantity);
    order.fold(
      (l) => emit(state.copyWith(failure: l, status: FormzSubmissionStatus.failure)),
      (r) => emit(state.copyWith(status: FormzSubmissionStatus.success)),
    );
  }
}
