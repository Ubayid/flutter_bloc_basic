import 'package:bloc_basic/sample_flutter_bloc/widget/button_widget.dart';
import 'package:bloc_basic/sample_flutter_bloc/widget/result_widget.dart';
import 'package:flutter/material.dart';

class NewCounterPage extends StatefulWidget {
  const NewCounterPage({super.key});

  @override
  State<NewCounterPage> createState() => _NewCounterPageState();
}

class _NewCounterPageState extends State<NewCounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
        elevation: 4,
        backgroundColor: Colors.lightBlue,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Your value is'),
          SizedBox(
            height: 18,
          ),
          ResultWidget(),
          SizedBox(
            height: 18,
          ),
          ButtonWidget(),
        ],
      ),
    );
  }
}
