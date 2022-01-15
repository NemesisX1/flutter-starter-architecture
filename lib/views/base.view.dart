import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../locator.dart';
import '../viewmodels/base.viewmodel.dart';

/// [BaseView]
/// Base class to manage a both a view and it related viewmodel
/// powered by provider package
class BaseView<T extends BaseViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget? child)? builder;
  final Function(T)? onModelReady;

  const BaseView({
    Key? key,
    this.builder,
    this.onModelReady,
  }) : super(key: key);

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  T model = locator<T>();

  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady!(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
        create: (context) => model,
        child: Consumer<T>(builder: widget.builder!));
  }
}
