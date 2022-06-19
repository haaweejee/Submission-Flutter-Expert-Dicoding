import 'package:ditonton/domain/entities/genre.dart';
import 'package:equatable/equatable.dart';

class TvSeriesDetail extends Equatable {
  final String? posterPath;
  final List<Genre> genres;
  final List<int> episode_run_time;
  final String overview;
  final String original_name;
  final double voteAverage;
  final int id;

  TvSeriesDetail(
      {required this.posterPath,
      required this.genres,
      required this.episode_run_time,
      required this.overview,
      required this.original_name,
      required this.voteAverage,
      required this.id});

  @override
  // TODO: implement props
  List<Object?> get props => [
        posterPath,
        overview,
        original_name,
        voteAverage,
        id,
        genres,
        episode_run_time
      ];
}
