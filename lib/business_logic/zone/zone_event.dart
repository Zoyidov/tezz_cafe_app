part of 'zone_bloc.dart';

abstract class ZoneEvent {}

class GetAllZonesEvent extends ZoneEvent {}

class ChangeSelectedZoneEvent extends ZoneEvent {
  final int index;

  ChangeSelectedZoneEvent(this.index);
}

class ChangeSelectedNoActiveZoneEvent extends ZoneEvent {
  final int index;

  ChangeSelectedNoActiveZoneEvent(this.index);
}
