part of '../../main.dart';

Future<void> setupProd(FutureOr<Widget> Function() builder) async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    AppEnvironment.setup(
      configuration: ProdEnv(),
    );

    // setup dependency injection
    di.DependencyInjection.setup();

    // singular injection at the start of the app
    await DepInItems.productCache.init();

    await SentryFlutter.init(
      (options) {
        options
          ..dsn = 'https://ada5484ff7744e84772669b3c485323c@o4508661105098752.ingest.de.sentry.io/4508676529258576'
          // Set tracesSampleRate to 1.0 to capture 100% of transactions for tracing.
          // We recommend adjusting this value in production.
          ..tracesSampleRate = 1.0
          // The sampling rate for profiling is relative to tracesSampleRate
          // Setting to 1.0 will profile 100% of sampled transactions:
          ..profilesSampleRate = 1.0;
      },
      appRunner: () async => runApp(
        await builder(),
      ),
    );
  }, (error, stack) {
    log(
      error.toString(),
      stackTrace: stack,
      name: AppConstants.initFunctionName,
    );
    // FirebaseCrashlytics.instance.recordError(
    //   error,
    //   stack,
    // );
    Sentry.captureException(error, stackTrace: stack);
  });
}

// Configure the firebase services
Future<void> firebaseConfigProd() async {
  final environment = AppEnvironment.environment;

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    name: environment,
  );

  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  await FirebaseAnalytics.instance.logAppOpen();
}
