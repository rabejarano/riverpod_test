part of com.tyba.app.home;

class ControllerFactory {
  static BaseController<BaseState> getController(String countryCode) {
    if (countryCode == 'CO') {
      return ControllerCO();
    } else {
      return ControllerPE();
    }
  }
}
