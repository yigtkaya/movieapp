part of '../movie_search_view.dart';

class MovieGrid extends StatelessWidget {
  const MovieGrid({
    required this.movies,
    super.key,
  });

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return MovieCard(movie: movie);
      },
    );
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({
    required this.movie,
    super.key,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (movie.posterPath != null)
            Expanded(
              child: CachedNetworkImage(
                imageUrl: 'https://image.tmdb.org/t/p/w220_and_h330_face${movie.posterPath}',
                fit: BoxFit.cover,
                width: double.infinity,
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
            )
          else
            const Expanded(
              child: Center(
                child: Icon(
                  Icons.movie,
                  size: 48,
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(
              AppDesignConstants.borderRadiusMedium,
            ),
            child: Text(
              movie.originalTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
