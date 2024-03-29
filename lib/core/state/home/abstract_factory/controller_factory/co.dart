part of com.tyba.app.home;

class ControllerCO extends BaseController<ColombiaState> {
  ControllerCO(ColombiaState initState) : super(initState);
  StateNotifierProviderRef<ControllerCO, ColombiaState>? _ref;

  set ref(StateNotifierProviderRef<dynamic, dynamic> newRef) {
    _ref = newRef as StateNotifierProviderRef<ControllerCO, ColombiaState>;
  }

  @override
  void incrementValue() {
    state = state.copyWith(contador: state.contador + 1);
    print('Soy Colombia');
    print('_ref');
  }
}
