import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../controller/my_home_page.dart';
import '../models/my_home_page.dart';
import '../providers/my_home_page.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    MyHomeViewModel viewModel = ref.read(myHomePageProviderController.notifier);
    MyHomePageState viewState = ref.watch(myHomePageProviderController);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${viewState.contador}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.incrementValue,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
