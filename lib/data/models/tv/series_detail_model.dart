import 'package:ditonton/data/models/genre_model.dart';
import 'package:ditonton/domain/entities/series_detail.dart';
import 'package:equatable/equatable.dart';

class TvSeriesDetailResponse extends Equatable {
  final String? posterPath;
  final List<GenreModel> genres;
  final List<int> episode_run_time;
  final String overview;
  final String original_name;
  final double voteAverage;
  final int id;

  TvSeriesDetailResponse({
    required this.posterPath,
    required this.genres,
    required this.episode_run_time,
    required this.overview,
    required this.original_name,
    required this.voteAverage,
    required this.id,
  });

  factory TvSeriesDetailResponse.fromJson(Map<String, dynamic> json) =>
      TvSeriesDetailResponse(
        posterPath: json["poster_path"],
        genres: List<GenreModel>.from(
            json["genres"].map((x) => GenreModel.fromJson(x))),
        episode_run_time:
            List<int>.from(json["episode_run_time"].map((x) => x)),
        overview: json["overview"],
        original_name: json["original_name"],
        voteAverage: json["vote_average"].toDouble(),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
    "poster_path": posterPath,
    "overview": overview,
    "original_name": original_name,
    "vote_average": voteAverage,
    "id": id,
    "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
    "episode_run_time": List<dynamic>.from(episode_run_time.map((x) => x))
  };

  TvSeriesDetail toEntity(){
    return TvSeriesDetail(
        posterPath: posterPath,
        genres: this.genres.map((genre) => genre.toEntity()).toList(),
        episode_run_time: episode_run_time,
        overview: overview,
        original_name: original_name,
        voteAverage: voteAverage,
        id: id
    );
  }

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
