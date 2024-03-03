import 'dart:async';

import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/data/zone/models/zone_model.dart';
import 'package:tezz_cafe_app/data/zone/repository/zone_repository.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

part 'zone_event.dart';

part 'zone_state.dart';

class ZoneBloc extends Bloc<ZoneEvent, ZoneState> {
  final ZoneRepository zoneRepository = getIt<ZoneRepository>();

  ZoneBloc() : super(const ZoneState()) {
    on<GetAllZonesEvent>(_onGetAllZonesEvent);
    on<ChangeSelectedZoneEvent>(_onChangeSelectedZoneEvent);
    on<ChangeSelectedNoActiveZoneEvent>(_onChangeSelectedNoActiveZoneEvent);
  }

  FutureOr<void> _onGetAllZonesEvent(GetAllZonesEvent event, Emitter<ZoneState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final zones = await zoneRepository.getAllZones();
    zones.fold(
      (l) => emit(state.copyWith(status: FormzSubmissionStatus.failure, failure: l)),
      (r) {
        final selectedZones = List<bool>.generate(r.length, (index) => index == 0);
        final selectedZonesNoActive = List<bool>.generate(r.length, (index) => index == 0);

        emit(state.copyWith(
          status: FormzSubmissionStatus.success,
          zones: r,
          selectedZones: selectedZones,
          selectedZonesNoActive: selectedZonesNoActive,
        ));
      },
    );
  }

  FutureOr<void> _onChangeSelectedZoneEvent(ChangeSelectedZoneEvent event, Emitter<ZoneState> emit) {
    final selectedZones = List<bool>.generate(state.zones.length, (index) => index == event.index);
    emit(state.copyWith(selectedZones: selectedZones));
  }

  FutureOr<void> _onChangeSelectedNoActiveZoneEvent(ChangeSelectedNoActiveZoneEvent event, Emitter<ZoneState> emit) {
    final selectedZones = List<bool>.generate(state.zones.length, (index) => index == event.index);
    emit(state.copyWith(selectedZonesNoActive: selectedZones));
  }
}
