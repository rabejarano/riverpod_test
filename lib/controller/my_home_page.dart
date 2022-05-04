import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/my_home_page.dart';

class MyHomeViewModel extends StateNotifier<MyHomePageState> {
  MyHomeViewModel(this.ref) : super(MyHomePageState(contador: 0));
  final StateNotifierProviderRef<MyHomeViewModel, MyHomePageState> ref;

  void incrementValue() {
    state = state.copyWith(contador: state.contador + 1);
  }
}
