part of '../movie_search_view.dart';

@RoutePage()
class FullScreenImageView extends StatelessWidget {
  const FullScreenImageView({
    required this.imageUrl,
    required this.heroTag,
    super.key,
  });

  final String imageUrl;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Hero(
            tag: heroTag,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.contain,
              placeholder: (context, url) => Shimmer.fromColors(
                baseColor: Theme.of(context).colorScheme.surfaceBright,
                highlightColor: Theme.of(context).colorScheme.surface,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              errorWidget: (context, url, error) => const Center(
                child: Icon(Icons.error),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
