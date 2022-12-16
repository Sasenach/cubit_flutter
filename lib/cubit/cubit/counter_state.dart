part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class OnClick extends CounterState {}

class MinusLight extends CounterState{}

class Minusdark extends CounterState{}

class PlusLight extends CounterState{}

class Plusdark extends CounterState{}
