import 'package:flutter/widgets.dart';

class NavigationController {
  NavigationController._privateConstructor();
  static final NavigationController _instance = NavigationController._privateConstructor();
  static NavigationController get instance => _instance;

  final ScrollController scrollController = ScrollController();

  // Global Keys By Section
  final GlobalKey aboutSectionKey = GlobalKey();
  final GlobalKey experiencesSectionKey = GlobalKey();
  final GlobalKey projectsSectionKey = GlobalKey();

  void scrollToSection(GlobalKey sectionKey) {
    final BuildContext? context = sectionKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
