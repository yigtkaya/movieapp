import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp/core/cache/cache_manager.dart';
import 'package:movieapp/core/config/app_environment.dart';
import 'package:movieapp/core/constants/app_constants.dart';
import 'package:movieapp/core/constants/app_design_constant.dart';
import 'package:movieapp/core/di/injection.dart' as di;
import 'package:movieapp/core/observers/custom_route_observer.dart';
import 'package:movieapp/core/router/router.dart';
import 'package:movieapp/core/theme/theme.dart';
import 'package:movieapp/localization/app_localizations.dart';
import 'package:movieapp/localization/cubit/language_cubit.dart';

part 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Setup environment
  AppEnvironment.setup(
    configuration: DevEnv(),
  );

  // Initialize cache
  await CacheManager.init();

  // Initialize dependencies
  await di.init();

  runApp(App());
}
