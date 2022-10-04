part of com.tyba.app.views;

class SubViewCo extends ConsumerWidget {
  const SubViewCo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ControllerCO viewModel =
        ref.read(ProvderSingleton.instace.currentProvider.notifier)
            as ControllerCO;
    MyHomePageState viewState =
        ref.watch(ProvderSingleton.instace.currentProvider) as MyHomePageState;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Col'),
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
