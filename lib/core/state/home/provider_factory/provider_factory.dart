part of com.tyba.app.home;

class ProviderFactory {
  static StateNotifierProvider getProvider(
      BaseController<BaseState> controller) {
    if (controller is ControllerCO) {
      return StateNotifierProvider<ControllerCO, ColombiaState>(
        (ref) {
          controller.ref = ref;
          return controller;
        },
        name: 'ControllerCO',
      );
    } else {
      return StateNotifierProvider<ControllerPE, PeruState>(
        (ref) {
          (controller as ControllerPE).ref = ref;
          return controller;
        },
        name: 'ControllerPE',
      );
    }
  }
}
