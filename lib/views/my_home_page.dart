part of com.tyba.app.views;

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  String country = 'CO';
  @override
  Widget build(BuildContext context) {
    if (country == 'CO') {
      return const SubViewCo();
    }
    return const SubViewPe();
  }
}
