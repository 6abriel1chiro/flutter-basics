import 'package:flutter/material.dart';
import 'package:flutter_application_0/features/bloc_provider.dart';
import 'package:flutter_application_0/features/string_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormDataPage extends StatelessWidget {
  const FormDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ejemplo bloc",
      home: BlocProvider(
        create: (context) => StringCubit(),
        child: const FormView(),
      ),
    );
  }
}
