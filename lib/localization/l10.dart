import 'package:flutter/widgets.dart';
import 'package:movieapp/core/router/router.dart';
import 'package:movieapp/localization/app_localizations.dart';

// Global accessor for localizations
AppLocalizations get l10n {
  final context = rootNavigatorKey.currentContext;
  assert(context != null, 'No context found. Make sure you have initialized your app properly.');
  return AppLocalizations.of(context!);
}

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
