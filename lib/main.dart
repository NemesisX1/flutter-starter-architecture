import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/helpers/empty.view.dart';
import 'package:flutter_starter/helpers/theme.dart';
import 'package:flutter_starter/providers/theme.provider.dart';
import 'package:provider/provider.dart';
import 'locator.dart';
import 'routes.dart';

/// [globalInitializer()]
/// Function to initialise all the pre-app things
globalInitializer() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp();
}

void main() async {
  await globalInitializer();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        /// Here you should register the ViewModels you want to use across many screens with
        /// the WideScopeBaseView
        ChangeNotifierProvider(create: (context) => locator<EmptyViewModel>()),

        /// You should register yoyr providers here too
        ChangeNotifierProvider(create: (context) => locator<ThemeProvider>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme,
        onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
      ),
    );
  }
}
