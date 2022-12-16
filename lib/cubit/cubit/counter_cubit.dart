
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

   int count = 0;

  void PlusLight() {
    count++;
    emit(OnClick());
  }

  void PlusDark() {
    count += 2;
    emit(OnClick());
  }

  void MinusLight() {
    count--;
    emit(OnClick());
  }

  void MinusDark() {
    count -= 2;
    emit(OnClick());
  }
}
