part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}
class CounterATeamIncrement extends CounterState {}
class CounterBTeamIncrement extends CounterState {}
class CounterRestTeamsPoints extends CounterState {}
