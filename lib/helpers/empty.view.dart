import 'package:flutter/material.dart';
import '../viewmodels/base.viewmodel.dart';
import '../views/base.view.dart';

/// A basic use case of the interaction between with a view and its related
/// viewmodel.
/// Feel free to use it as a starter to create you own view based on a view model

class EmptyViewModel extends BaseViewModel {}

class EmptyView extends StatefulWidget {
  EmptyView({Key? key}) : super(key: key);

  @override
  _EmptyViewState createState() => _EmptyViewState();
}

class _EmptyViewState extends State<EmptyView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<EmptyViewModel>(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(),
        body: ListBody(),
      ),
    );
  }
}
