part of 'zone_bloc.dart';

class ZoneState {
  final FormzSubmissionStatus status;
  final Failure? failure;
  final List<ZoneModel> zones;
  final List<bool> selectedZones;

  const ZoneState({
    this.status = FormzSubmissionStatus.initial,
    this.failure,
    this.zones = const [],
    this.selectedZones = const [],
  });

  ZoneState copyWith({
    FormzSubmissionStatus? status,
    Failure? failure,
    List<ZoneModel>? zones,
    List<bool>? selectedZones,
  }) {
    return ZoneState(
      status: status ?? this.status,
      failure: failure ?? this.failure,
      zones: zones ?? this.zones,
      selectedZones: selectedZones ?? this.selectedZones,
    );
  }
}
