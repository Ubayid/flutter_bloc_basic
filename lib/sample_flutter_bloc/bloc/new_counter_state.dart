part of 'new_counter_bloc.dart';

@immutable
sealed class NewCounterState {}

final class NewCounterInitial extends NewCounterState {}

final class NewCounterLoading extends NewCounterState {}

final class NewCounterSuccess extends NewCounterState {
  final int counter;

  NewCounterSuccess(this.counter);
}

final class NewCounterFailure extends NewCounterState {
  final String message;

  NewCounterFailure(this.message);
}
