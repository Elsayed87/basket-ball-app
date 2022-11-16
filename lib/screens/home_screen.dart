import '../cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../const/const.dart';
import '../widgets/reusable_Button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) => Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text(
                  'Basket Ball Counter',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.orange[600],
                elevation: 0.0,
                titleSpacing: 4.0,
              ),
              body: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Team A',
                                  style: kTextTeamStyle,
                                ),
                                Text(
                                  '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                                  style: kTextTeamPointsStyle,
                                ),
                                ReusableButton(
                                  buttonTitle: 'Add 1 point',
                                  onpressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .teamsIncrement(
                                            team: "A", buttomNumber: 1);
                                  },
                                ),
                                ReusableButton(
                                  buttonTitle: 'Add 2 points',
                                  onpressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .teamsIncrement(
                                            team: "A", buttomNumber: 2);
                                  },
                                ),
                                ReusableButton(
                                  buttonTitle: 'Add 3 points',
                                  onpressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .teamsIncrement(
                                            team: "A", buttomNumber: 3);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 0.0,
                                  left: 0.0,
                                  bottom: 0.0,
                                  top: 100.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 2.0,
                                    height: 500,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Team B',
                                  style: kTextTeamStyle,
                                ),
                                Text(
                                  '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                                  style: kTextTeamPointsStyle,
                                ),
                                ReusableButton(
                                  buttonTitle: 'Add 1 point',
                                  onpressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .teamsIncrement(
                                            team: "B", buttomNumber: 1);
                                  },
                                ),
                                ReusableButton(
                                  buttonTitle: 'Add 2 points',
                                  onpressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .teamsIncrement(
                                            team: "B", buttomNumber: 2);
                                  },
                                ),
                                ReusableButton(
                                  buttonTitle: 'Add 3 points',
                                  onpressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .teamsIncrement(
                                            team: "B", buttomNumber: 3);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                    Center(
                      child: SizedBox(
                        width: 150,
                        child: ReusableButton(
                          buttonTitle: 'Rest',
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .restTeamPoints();
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
        listener: (context, state) {});
  }
}
