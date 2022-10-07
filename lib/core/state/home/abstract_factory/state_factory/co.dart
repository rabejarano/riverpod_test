part of com.tyba.app.home;

class ColombiaState extends BaseState {
  ColombiaState({contador}) : super(contador: contador);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColombiaState &&
          runtimeType == other.runtimeType &&
          toString() == other.toString();

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  ColombiaState copyWith({
    int? contador,
  }) =>
      ColombiaState(
        contador: contador ?? this.contador,
      );

  @override
  String toString() => 'ColombiaState ';
}
