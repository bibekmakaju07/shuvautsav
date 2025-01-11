import 'package:flutter/material.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';

class LoadingIndicator {
  LoadingIndicator._internal();

  static final LoadingIndicator instance = LoadingIndicator._internal();

  final loadingOverlay = OverlayEntry(
    builder: (context) {
      return const Align(
        child: CircularProgressIndicator(),
      );
    },
  );
  OverlayState? _overlayState;
  OverlayEntry? _overlayEntry;
  bool shown = false;

  void show(BuildContext context) {
    shown = true;
    showDialog(
      context: appNavigatorKey.currentContext!,
      builder: (context) {
        return const LoadingIndicatorWidget();
      },
    );

    // final loadingOverlay = OverlayEntry(
    //   builder: (context) {
    //     return LoadingIndicatorWidget();
    //   },
    // );
    // if (_overlayState?.mounted ?? false) {
    //   return;
    // }
    // _overlayState = Overlay.of(context);
    // _overlayEntry = loadingOverlay;

    // shown = true;

    // _overlayState?.insert(loadingOverlay);
  }

  void hide() {
    if (shown) {
      shown = false;
      Navigator.pop(appNavigatorKey.currentContext!);
    }
    //   if (_overlayState != null) {
    //     _overlayEntry?.remove();
    //   }
    //   shown = false;
    //   _overlayState = null;
    //   _overlayEntry = null;
  }
}

class LoadingIndicatorWidget extends StatelessWidget {
  const LoadingIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (s) {},
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: const IgnorePointer(
          child: PopScope(
            canPop: false,
            child: Scaffold(
              backgroundColor: Colors.black26,
              body: Align(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
