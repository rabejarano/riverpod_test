part of com.tyba.app.home;

class BaseState {
  BaseState({
    this.contador = 0,
  });

  int contador;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseState &&
          runtimeType == other.runtimeType &&
          toString() == other.toString();

  @override
  int get hashCode => runtimeType.hashCode;

  BaseState copyWith({
    int? contador,
  }) =>
      BaseState(
        contador: contador ?? this.contador,
      );

  @override
  String toString() => 'BaseState ';
}
