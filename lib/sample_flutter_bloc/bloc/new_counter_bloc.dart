import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'new_counter_event.dart';
part 'new_counter_state.dart';

class NewCounterBloc extends Bloc<NewCounterEvent, NewCounterState> {
  int value = 0;
  NewCounterBloc() : super(NewCounterSuccess(0)) {
    on<IncrementEvent>((event, emit) async {
      emit(NewCounterLoading());
      // await Future.delayed(const Duration(seconds: 2));
      value++;
      emit(NewCounterSuccess(value));
    });

    on<DecrementEvent>((event, emit) {
      emit(NewCounterLoading());
      value--;
      if (value < -10) {
        value = -11;
        emit(NewCounterFailure("value cannot be less than -10"));
      } else {
        emit(NewCounterSuccess(value));
      }
    });
  }
}
