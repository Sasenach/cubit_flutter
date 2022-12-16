import 'package:cubit_prct/cubit/cubit/counter_cubit.dart';
import 'package:cubit_prct/cubit/cubit/cubit/theme_cubit_cubit.dart';
import 'package:cubit_prct/win_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocProvider(
        create: (context) => ThemeCubitCubit(),
        child: BlocBuilder<ThemeCubitCubit, ThemeCubitState>(
          builder: (context, state) {
            Brightness brightness = context.read<ThemeCubitCubit>().theme;
            return MaterialApp(
              title: 'Flutter Demo',
              themeMode: ThemeMode.light,
              darkTheme: ThemeData.dark(),
              theme: ThemeData(
                brightness: brightness,
                primarySwatch: Colors.teal,
              ),
              home: const WinOne(),
            );
          },
        ),
      ),
    );
  }
}
