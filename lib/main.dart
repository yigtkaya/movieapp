import 'dart:async';
import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp/core/constants/app_constants.dart';
import 'package:movieapp/core/constants/app_design_constant.dart';
import 'package:movieapp/core/di/dependecy_injection.dart' as di;
import 'package:movieapp/core/di/dependecy_injection_items.dart';
import 'package:movieapp/core/environment/app_environment.dart';
import 'package:movieapp/core/environment/dev_envied.dart';
import 'package:movieapp/core/environment/prod_envied.dart';
import 'package:movieapp/core/firebase/firebase_options_prod.dart';
import 'package:movieapp/core/observers/custom_route_observer.dart';
import 'package:movieapp/core/router/router.dart';
import 'package:movieapp/core/theme/cubit/theme_cubit.dart';
import 'package:movieapp/core/theme/cubit/theme_state.dart';
import 'package:movieapp/core/theme/theme.dart';
import 'package:movieapp/features/movie_search/presentation/cubit/movie_search_cubit.dart';
import 'package:movieapp/localization/app_localizations.dart';
import 'package:movieapp/localization/cubit/language_cubit.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

part 'features/app/initializer.dart';
part 'features/app/app.dart';
part 'features/app/dev_setup.dart';
part 'features/app/prod_setup.dart';

void main() {
  setup(
    () => Initializer(
      child: App(),
    ),
  );
}
