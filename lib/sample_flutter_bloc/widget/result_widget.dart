import 'package:bloc_basic/sample_flutter_bloc/bloc/new_counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewCounterBloc, NewCounterState>(
      builder: (context, state) {
        if (state is NewCounterSuccess) {
          return Text(
            state.counter.toString(),
            style: const TextStyle(fontSize: 24),
          );
        }

        //loading
        if (state is NewCounterLoading) {
          return const CircularProgressIndicator();
        }

        if (state is NewCounterFailure) {
          return Text(
            state.message,
            style: const TextStyle(fontSize: 24),
          );
        }

        return Text(
          '0',
          style: const TextStyle(fontSize: 24),
        );
      },
    );
  }
}