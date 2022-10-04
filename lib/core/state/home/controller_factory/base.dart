part of com.tyba.app.home;

abstract class BaseController<T extends BaseState> extends StateNotifier<T> {
  BaseController(T state) : super(state);
  void incrementValue();
}
