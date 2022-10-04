part of com.tyba.app.home;

class MyHomePageState {
  MyHomePageState({
    required this.contador,
  });

  int contador;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyHomePageState &&
          runtimeType == other.runtimeType &&
          toString() == other.toString();

  @override
  int get hashCode => runtimeType.hashCode;

  MyHomePageState copyWith({
    int? contador,
  }) =>
      MyHomePageState(
        contador: contador ?? this.contador,
      );

  @override
  String toString() => 'MyHomePageState ';
}
