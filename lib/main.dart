import 'package:flutter/material.dart';
import 'package:flutter_starter/helpers/theme.dart';
import 'locator.dart';
import 'routes.dart';

/// [globalInitializer()]
/// Function to initialise all the pre-app things
globalInitializer() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
}

void main() async {
  await globalInitializer();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
    );
  }
}
