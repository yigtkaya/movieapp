import 'package:flutter/material.dart';
import 'package:movieapp/localization/models/currency.dart';
import 'package:movieapp/localization/models/language.dart';

/// English language.
const Language english = Language(
  id: 1,
  name: 'English',
  imagePath: '🇺🇸',
  urlCode: 'en',
  locale: Locale('en'),
  currency: englishCurrency,
);

/// English currency.
const Currency englishCurrency = Currency(
  code: '840',
  name: 'US Dollar',
  shortName: 'USD',
  symbol: r'$',
);
