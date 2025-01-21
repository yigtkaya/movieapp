part of '../../main.dart';

final class Initializer extends StatelessWidget {
  const Initializer({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubit>(
          create: (context) => DepInItems.languageCubit,
        ),
        BlocProvider<MovieSearchCubit>(
          create: (context) => DepInItems.movieSearchCubit,
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => DepInItems.themeCubit,
        ),
      ],
      child: child,
    );
  }
}
