import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shuvautsavapp/features/login/views/login_register_options_page.dart';

extension AppRoute on WidgetRef {
  Future<void> push(RoutePage page) async {
    read(routeProvider.notifier).push(page);
  }

  Future<void> pop() async {
    read(routeProvider.notifier).pop(null);
  }

  Future<void> removeLast(int pageCount) async {
    read(routeProvider.notifier).removePages(pageCount);
  }

  Future<void> pushReplacement(RoutePage page) async {
    read(routeProvider.notifier).pushReplacement(page);
  }

  Future<void> replaceAll(RoutePage page) async {
    read(routeProvider.notifier).replaceAll(page);
  }
}

final appNavigatorKey = GlobalKey<NavigatorState>();

final routeProvider = ChangeNotifierProvider<RouteChangeNotifier>((ref) {
  return RouteChangeNotifier();
});

class AppRouteDelegate extends RouterDelegate<List<RoutePage>>
    with PopNavigatorRouterDelegateMixin, ChangeNotifier {
  AppRouteDelegate(this.ref);
  late BuildContext myContext;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    myContext = context;
    return Consumer(
      builder: (context, ref, _) {
        final state = ref.watch(routeProvider);
        return Navigator(
          key: navigatorKey,
          pages: List.unmodifiable(state.pages),
          observers: [
            NavObserver(),
            ChuckerFlutter.navigatorObserver,
          ],
          onPopPage: (route, result) {
            if (!route.didPop(result)) {
              return false;
            }
            ref.read(routeProvider.notifier).pop('');
            return true;
          },
        );
      },
    );
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => appNavigatorKey;

  @override
  List<RoutePage>? get currentConfiguration => ref.watch(routeProvider).pages;

  @override
  Future<List<RoutePage>> setNewRoutePath(Object configuration) {
    return SynchronousFuture(ref.watch(routeProvider).pages);
  }
}

class NavObserver extends NavigatorObserver {}

class MyRouterParser extends RouteInformationParser<List<RoutePage>> {
  MyRouterParser(this.ref);
  final WidgetRef ref;
  @override
  Future<List<RoutePage>> parseRouteInformation(
    RouteInformation routeInformation,
  ) {
    return SynchronousFuture(ref.watch(routeProvider).pages);
  }

  @override
  RouteInformation? restoreRouteInformation(List<RoutePage> configuration) {
    return RouteInformation(uri: Uri.parse('/'));
  }
}

class RouteChangeNotifier extends ChangeNotifier {
  final List<RoutePage> pages = <RoutePage>[
    RoutePage(child: const LoginRegisterOptionsPage(), name: 'login'),
  ];

  dynamic args;

  void pop<T>(String? key, {T? arguments}) {
    args = arguments;
    pages.removeLast();
    notifyListeners();
  }

  void push(RoutePage page) {
    pages.add(page);
    notifyListeners();
  }

  void pushReplacement(RoutePage page) {
    pages.removeLast();
    pages.add(page);
    notifyListeners();
  }

  void removePages(int count) {
    if (pages.length > count) {
      final remainPages = pages.sublist(0, pages.length - count);
      pages
        ..clear()
        ..addAll(remainPages);
      notifyListeners();
    }
  }

  void replaceAll(RoutePage page) {
    pages
      ..clear()
      ..add(page);
    notifyListeners();
  }
}

class RoutePage extends Page {
  RoutePage({
    required this.child,
    required String name,
  }) : super(name: name, key: ValueKey(name));

  final Widget child;

  @override
  Route createRoute(BuildContext context) {
    // return CupertinoPageRoute(builder: builder);
    return MaterialPageRoute(
      builder: (context) {
        return child;
      },
      settings: this,
    );
  }
}
