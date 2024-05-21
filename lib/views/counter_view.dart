import 'package:bloc_practice/application/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CounterView extends StatelessWidget {
  CounterView({super.key});
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Counter"),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: Text("Back")),
                    ElevatedButton(
                        onPressed: () {
                          context.goNamed("about");
                        },
                        child: Text("Navigate")),
                  ],
                ),
                Text("Counter Value ${state.count}"),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(OnCounterIncrement());
                    },
                    child: const Text("Increment")),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(OnCounterDecrement());
                    },
                    child: const Text("Decrement")),
                TextField(
                  controller: nameController,
                ),
                Text("Name : ${state.name}"),
                ElevatedButton(
                    onPressed: () {
                      context
                          .read<CounterBloc>()
                          .add(OnTextFieldValue(name: nameController.text));
                    },
                    child: const Text("Show Name")),
                Slider(
                    min: 0,
                    max: 100,
                    value: state.sliderValue,
                    onChanged: (value) {
                      context
                          .read<CounterBloc>()
                          .add(OnSliderChanged(sliderValue: value));
                      print(value);
                    }),
              ],
            ),
          );
        },
      ),
    );
  }
}
