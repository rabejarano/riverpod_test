part of com.tyba.app.home;

class PeruState extends BaseState {
  PeruState({contador}) : super(contador: contador);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeruState &&
          runtimeType == other.runtimeType &&
          toString() == other.toString();

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  PeruState copyWith({
    int? contador,
  }) =>
      PeruState(
        contador: contador ?? this.contador,
      );

  @override
  String toString() => 'PeruState ';
}
