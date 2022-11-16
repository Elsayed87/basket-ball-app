import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int teamApoints = 0;
  int teamBpoints = 0;
  void teamsIncrement({required String team, required int buttomNumber}) {
    if (team == 'A') {
      teamApoints += buttomNumber;
      emit(CounterATeamIncrement());
    } else {
      teamBpoints += buttomNumber;
      emit(CounterBTeamIncrement());
    }
  }
  void restTeamPoints(){
    teamApoints=0;
    teamBpoints=0;
    emit(CounterRestTeamsPoints());
  }
}
