import 'package:flutter/widgets.dart';
import '../helpers/enums.dart';

/// [BaseViewModel]
/// The base viewmodel which is inheritate by all the others viewmodel.
/// It provide the base things every viewmodels will need.
/// It can be used also to handle the view's state.
/// If you are performing a task that require to be performs before a rendering
/// just set the _state to ViewState.Busy and to ViewState.Idle if everything
/// is normally done.
class BaseViewModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
