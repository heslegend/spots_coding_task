import 'dart:developer';

import 'package:riverpod/riverpod.dart';

class SimpleProviderObserver extends ProviderObserver {
  const SimpleProviderObserver();
  static const classTag = 'SimpleProviderObserver';

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    log('[$classTag] ${provider.name ?? provider.runtimeType}, newValue: $newValue, previousValue: $previousValue');
  }

  @override
  void providerDidFail(
    ProviderBase provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    log('[$classTag] ${provider.name ?? provider.runtimeType}, failed with error $error, stackTrace: $stackTrace');
  }

  @override
  void didAddProvider(
    ProviderBase provider,
    Object? value,
    ProviderContainer container,
  ) {
    log('[$classTag] Added provider ${provider.name ?? provider.runtimeType}, initSuccess: ${value != null}');
  }

  @override
  void didDisposeProvider(
    ProviderBase provider,
    ProviderContainer containers,
  ) {
    log('[$classTag] Disposed provider ${provider.name ?? provider.runtimeType}');
  }
}
