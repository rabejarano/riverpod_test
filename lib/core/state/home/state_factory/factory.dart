part of com.tyba.app.home;

class StateFactory {
  static BaseState getState(String countryCode) {
    if (countryCode == 'CO') {
      return ColombiaState();
    } else {
      return PeruState();
    }
  }
}
