import 'package:flutter/material.dart';
import 'package:help_ukraine_widget/help_ukraine_widget.dart';

/// It's a controller that helps us choose the animation
/// direction and the current view
class HelpWidgetViewController extends ValueNotifier<HelpWidgetView> {
  /// A variable that helps choose animation direction.
  bool transitionForward = true;

  /// A variable that helps choose animation direction.
  HelpWidgetView lastView = HelpWidgetView.collapsed;

  ///Constructor
  HelpWidgetViewController([super.value = HelpWidgetView.collapsed]);

  /// Defines logic to open CollapsedView
  void showCollapsedView() {
    value = HelpWidgetView.collapsed;
    lastView = HelpWidgetView.collapsed;
    notifyListeners();
  }

  /// Defines logic to open MainView
  void showMainView() {
    value = HelpWidgetView.main;
    if (lastView == HelpWidgetView.collapsed) transitionForward = true;
    if (lastView == HelpWidgetView.options) transitionForward = false;
    notifyListeners();
  }

  /// Defines logic to open OptionsView
  void showOptionsView() {
    value = HelpWidgetView.options;
    transitionForward = true;
    lastView = HelpWidgetView.options;
    notifyListeners();
  }
}
