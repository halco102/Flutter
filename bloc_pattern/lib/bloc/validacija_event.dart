part of 'validacija_bloc.dart';

@immutable
abstract class ValidacijaEvent extends Equatable {
  const ValidacijaEvent();

  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class TextChanged extends ValidacijaEvent {
  final String text;

  const TextChanged({@required this.text});

  @override
  List<Object> get props => [text];
}
