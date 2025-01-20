import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp/core/constants/app_constants.dart';
import 'package:movieapp/core/constants/app_design_constant.dart';
import 'package:movieapp/core/di/dependecy_injection.dart' as di;
import 'package:movieapp/core/di/dependecy_injection_items.dart';
import 'package:movieapp/core/environment/app_environment.dart';
import 'package:movieapp/core/environment/envied.dart';
import 'package:movieapp/core/observers/custom_route_observer.dart';
import 'package:movieapp/core/router/router.dart';
import 'package:movieapp/core/theme/theme.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_cubit.dart';
import 'package:movieapp/localization/app_localizations.dart';
import 'package:movieapp/localization/cubit/language_cubit.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

part 'initializer.dart';
part 'app.dart';
part 'setup.dart';

void main() {
  setup(
    () => Initializer(
      child: App(),
    ),
  );
}
