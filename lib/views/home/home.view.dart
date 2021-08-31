import 'package:flutter/material.dart';
import 'widgets/custom.widget.dart';

class HomeView extends StatefulWidget {
  static const routeName = '/';
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListBody(
        children: [
          CustomWidget(),
        ],
      ),
    );
  }
}
