part of 'bloc_bloc.dart';

@immutable
abstract class AppBlocEvent {
  const AppBlocEvent();
}

@immutable
class ChangeTextEvent extends AppBlocEvent {
  const ChangeTextEvent();
}
