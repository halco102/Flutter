part of 'validacija_bloc.dart';

@immutable
abstract class ValidacijaState {}

class ValidacijaInitial extends ValidacijaState {}

class ValidacijaSuccess extends ValidacijaState {}

class ValidacijaFail extends ValidacijaState {}

class ValidacijaInProgress extends ValidacijaState {}
