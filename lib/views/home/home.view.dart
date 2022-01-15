import 'package:flutter/material.dart';
import 'widgets/custom.widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListBody(
        children: const [
          CustomWidget(),
        ],
      ),
    );
  }
}
