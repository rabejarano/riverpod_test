part of com.tyba.app.home;

class ControllerPE extends BaseController<PeruState> {
  ControllerPE() : super(PeruState(contador: 0));
  StateNotifierProviderRef<ControllerPE, PeruState>? _ref;

  set ref(StateNotifierProviderRef<dynamic, dynamic> newRef) {
    _ref = newRef as StateNotifierProviderRef<ControllerPE, PeruState>;
  }

  @override
  void incrementValue() {
    state = state.copyWith(contador: state.contador + 1);
    print('Soy Per');
    print('_ref');
  }
}
