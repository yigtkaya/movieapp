// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [FullScreenImageView]
class FullScreenImageRoute extends PageRouteInfo<FullScreenImageRouteArgs> {
  FullScreenImageRoute({
    required String imageUrl,
    required String heroTag,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          FullScreenImageRoute.name,
          args: FullScreenImageRouteArgs(
            imageUrl: imageUrl,
            heroTag: heroTag,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'FullScreenImageRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FullScreenImageRouteArgs>();
      return FullScreenImageView(
        imageUrl: args.imageUrl,
        heroTag: args.heroTag,
        key: args.key,
      );
    },
  );
}

class FullScreenImageRouteArgs {
  const FullScreenImageRouteArgs({
    required this.imageUrl,
    required this.heroTag,
    this.key,
  });

  final String imageUrl;

  final String heroTag;

  final Key? key;

  @override
  String toString() {
    return 'FullScreenImageRouteArgs{imageUrl: $imageUrl, heroTag: $heroTag, key: $key}';
  }
}

/// generated route for
/// [MovieSearchView]
class MovieSearchRoute extends PageRouteInfo<void> {
  const MovieSearchRoute({List<PageRouteInfo>? children})
      : super(
          MovieSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieSearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MovieSearchView();
    },
  );
}

/// generated route for
/// [SplashView]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashView();
    },
  );
}
