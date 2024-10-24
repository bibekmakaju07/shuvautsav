import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';

final toastProvider = StateProvider.autoDispose<
    ({String title, String description, bool error, String id})?>((ref) {
  return null;
});

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();
  }

  final Map<String, OverlayEntry> _overlayMap = {};
  double offset = 1;
  final _backButtonDispatcher = RootBackButtonDispatcher();

  void _showOverlay(
    BuildContext oContext, {
    required String id,
    String title = '',
    bool error = false,
  }) {
    if (_overlayMap.containsKey(id)) {
      return;
    }
    ++offset;
    _overlayMap[id] = OverlayEntry(
      maintainState: true,
      builder: (context) {
        return OverlayW(
          id: id,
          offset: offset,
          title: title,
          error: error,
          close: () {
            _dismissOverlay(id);
          },
        );
      },
    );

    Overlay.of(oContext).insert(_overlayMap[id]!);

    Timer(const Duration(seconds: 3), () {
      _dismissOverlay(id);
      offset -= 1;
    });
  }

  void _dismissOverlay(String id) {
    if (_overlayMap.containsKey(id)) {
      _overlayMap[id]?.remove();
      _overlayMap.remove(id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: AppRouteDelegate(ref),
      routeInformationParser: MyRouterParser(ref),
      backButtonDispatcher: _backButtonDispatcher,
      builder: (context, child) {
        return Stack(
          children: [
            child!,
            Overlay(
              initialEntries: [
                OverlayEntry(
                  builder: (context) => Consumer(
                    builder: (_, ref, __) {
                      ref.listen(toastProvider, (prev, next) {
                        if (next != null) {
                          _showOverlay(
                            context,
                            id: next.id,
                            title: next.title,
                            error: next.error,
                          );
                        }
                      });
                      return const SizedBox.shrink();
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
      theme: ThemeData(
        primaryColor: const Color(0xffED1C24),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffED1C24)),
        // scaffoldBackgroundColor: LightColor.borderColor.shade50,
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(
                  // vertical: SwasthyeDimens.k12,
                  // horizontal: SwasthyeDimens.k10,
                  ),
            ),
          ),
        ),
        iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
              // iconColor: WidgetStatePropertyAll(LightColor.primaryColor),
              ),
        ),
        cardTheme: CardTheme(
          margin: EdgeInsets.zero,
          elevation: 2,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        // textTheme: KTextTheme.textTheme,
        appBarTheme: const AppBarTheme(
          actionsIconTheme: IconThemeData(
            color: Colors.transparent,
          ),
        ),
        useMaterial3: true,
      ),
    );
  }
}

class OverlayW extends StatefulWidget {
  const OverlayW({
    required this.id,
    required this.title,
    required this.offset,
    this.description = '',
    this.error = false,
    super.key,
    this.close,
  });
  final String title;
  final String description;
  final bool error;
  final String id;
  final double offset;
  final VoidCallback? close;

  @override
  State<OverlayW> createState() => _OverlayWState();
}

class _OverlayWState extends State<OverlayW> {
  @override
  Widget build(BuildContext context) {
    log('${widget.error}');
    return Positioned(
      top: 50,
      right: 0,
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            color: widget.error ? Colors.red : Colors.green,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      if (widget.description.isNotEmpty)
                        Text(
                          widget.title,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    widget.close?.call();
                  },
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}