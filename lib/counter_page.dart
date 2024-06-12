import 'package:bloc_basic/counter_bloc.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  CounterBloc counterBloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
        elevation: 4,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You have pushed the button this many times:'),
          SizedBox(
            height: 18,
          ),
          StreamBuilder<int>(
            stream: counterBloc.streamState,
            builder: (context, snapshot) {
              return Text(
                '${snapshot.data}',
                style: const TextStyle(fontSize: 24),
              );
            },
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  counterBloc.sinkEvent.add(DecrementEvent());
                },
                child: const Text('Decrement'),
              ),
              SizedBox(
                width: 18,
              ),
              ElevatedButton(
                onPressed: () {
                  counterBloc.sinkEvent.add(IncrementEvent());
                },
                child: const Text('Increment'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
