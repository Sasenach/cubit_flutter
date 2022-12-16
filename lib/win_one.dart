import 'package:cubit_prct/cubit/cubit/counter_cubit.dart';
import 'package:cubit_prct/cubit/cubit/cubit/theme_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WinOne extends StatefulWidget {
  const WinOne({super.key});

  @override
  State<WinOne> createState() => _WinOneState();
}

class _WinOneState extends State<WinOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Container(
                    child: Text(
                        'Значение: ${context.read<CounterCubit>().count.toString()}'),
                  );
                },
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BlocBuilder<CounterCubit, CounterState>(
                      builder: (context, state) {
                        return IconButton(
                            onPressed: () {
                              if (MediaQuery.of(context).platformBrightness ==
                                  Brightness.dark) {
                                context.read<CounterCubit>().PlusLight();
                              } else {
                                context.read<CounterCubit>().PlusDark();
                              }
                            },
                            icon: const Icon(Icons.add_box_outlined));
                      },
                    ),
                    BlocBuilder<CounterCubit, CounterState>(
                      builder: (context, state) {
                        return IconButton(
                            onPressed: () {
                              if (MediaQuery.of(context).platformBrightness ==
                                  Brightness.dark) {
                                context.read<CounterCubit>().MinusLight();
                              } else {
                                context.read<CounterCubit>().MinusDark();
                              }
                            },
                            icon: const Icon(
                                Icons.remove_circle_outline_outlined));
                      },
                    )
                  ],
                ),
              ),
              Container(
                child: BlocBuilder<ThemeCubitCubit, ThemeCubitState>(
                    builder: (context, state) {
                  if (state == Themelight) {
                    return IconButton(
                        onPressed: () {
                          context.read<ThemeCubitCubit>().setDarkTheme();
                        },
                        icon: Icon(Icons.mode_night_outlined));
                  } else {
                    return IconButton(
                        onPressed: () {
                          context.read<ThemeCubitCubit>().setLightTheme();
                        },
                        icon: Icon(Icons.light_mode));
                  }
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
