import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/my_home_page.dart';
import '../models/my_home_page.dart';

StateNotifierProvider<MyHomeViewModel, MyHomePageState> myHomePageProviderController =
    StateNotifierProvider<MyHomeViewModel, MyHomePageState>(
  MyHomeViewModel.new,
  name: 'MyHomeViewModel',
);
