import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/base.viewmodel.dart';
import '../../locator.dart';

/// [WideScopeBaseView]
/// Base class to manage a both a view and it related viewmodel
/// powered by provider package
class WideScopeBaseView<T extends BaseViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model) builder;

  const WideScopeBaseView({
    required this.builder,
    this.listen = false,
    Key? key,
  }) : super(key: key);
  final bool listen;
  @override
  _WideScopeBaseViewState<T> createState() => _WideScopeBaseViewState<T>();
}

class _WideScopeBaseViewState<T extends BaseViewModel>
    extends State<WideScopeBaseView<T>> {
  late T model;
  @override
  void initState() {
    if (mounted && !widget.listen) {
      model = Provider.of<T>(
        context,
        listen: widget.listen,
      );
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    if (mounted && widget.listen) {
      model = Provider.of<T>(
        context,
        listen: widget.listen,
      );
    }
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return widget.builder(context, model);
    });
  }
}
