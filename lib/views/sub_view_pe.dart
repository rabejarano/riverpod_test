part of com.tyba.app.views;

class SubViewPe extends ConsumerWidget {
  const SubViewPe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ControllerPE viewModel = ref.read(homeProvider.notifier) as ControllerPE;
    PeruState viewState = ref.watch(homeProvider) as PeruState;
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
