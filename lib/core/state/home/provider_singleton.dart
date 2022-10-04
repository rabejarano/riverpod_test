part of com.tyba.app.home;

class ProvderSingleton {
  ProvderSingleton._() {
    BaseController<BaseState> controller =
        ControllerFactory.getController('CO');
    _provider = ProviderFactory.getProvider(controller);
  }

  static final ProvderSingleton instace = ProvderSingleton._();
  late StateNotifierProvider _provider;
  StateNotifierProvider get currentProvider => _provider;
}


// class ProviderHome {
//   ProviderHome() {
//     BaseController<BaseState> controller =
//         ControllerFactory.getController('CO');
//     _provider = ProviderFactory.getProvider(controller);
//   }

//   late StateNotifierProvider _provider;
//   StateNotifierProvider get currentProvider => _provider;
// }