import 'package:flutter/material.dart';

/// Abstract classes for providers
/// I call providers classes with aim to work with data which are not related
/// to any specific viewmodel such as things like theme manager (for light/dark
/// mode purposes maybe)
/// You don't use them with a BaseView or a WideScopeBaseView
abstract class BaseProvider extends ChangeNotifier {}
