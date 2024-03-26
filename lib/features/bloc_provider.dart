import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import './string_cubit.dart';
import './string_state.dart';

class FormView extends StatelessWidget {
  const FormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Pattern"),
      ),
      body: BlocBuilder<StringCubit, StringState>(builder: (context, state) {
        if (state is StringLoading) {
          return const Text("loading...");
        } else if (state is StringNew) {
          return Text(state.data);
        } else {
          return const Text("Huh");
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<StringCubit>().addData();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
