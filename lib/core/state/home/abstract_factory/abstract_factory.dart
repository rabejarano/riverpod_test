part of com.tyba.app.home;

class AbstractFactory {
  static StateNotifierProvider<StateNotifier<dynamic>, dynamic> getProvider(
      String countryCode) {
    BaseState initialState = StateFactory.getInitialState(countryCode);
    BaseController<BaseState> controller =
        ControllerFactory.getController(countryCode, initialState);
    return ProviderFactory.getProvider(controller);
  }
}
