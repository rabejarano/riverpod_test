part of com.tyba.app.home;

class StateFactory {
  static BaseState getInitialState(String countryCode) {
    if (countryCode == 'CO') {
      return ColombiaState(contador: 5);
    } else {
      return PeruState(contador: 2);
    }
  }
}
