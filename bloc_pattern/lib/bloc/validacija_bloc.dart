import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'validacija_event.dart';
part 'validacija_state.dart';

class ValidacijaBloc extends Bloc<ValidacijaEvent, ValidacijaState> {
  ValidacijaBloc() : super(ValidacijaInitial());

  @override
  Stream<ValidacijaState> mapEventToState(
    ValidacijaEvent event,
  ) async* {
    final _emailRegex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    if (event is TextChanged) {
      yield ValidacijaInProgress();
      if (_emailRegex.hasMatch(event.text)) {
        yield ValidacijaSuccess();
      } else {
        yield ValidacijaFail();
      }
    }
  }
}
