part of com.tyba.app.home;

class ControllerFactory {
  static BaseController<BaseState> getController(
      String countryCode, BaseState initState) {
    if (countryCode == 'CO') {
      return ControllerCO(initState as ColombiaState);
    } else {
      return ControllerPE(initState as PeruState);
    }
  }
}
