import 'package:equatable/equatable.dart';

class TvSeries extends Equatable {
  String? backdrop_path;
  String? first_air_date;
  List<int>? genreIds;
  int id;
  String? name;
  List<String>? origin_country;
  String? original_name;
  String? overview;
  double? popularity;
  String? poster_path;
  double? vote_average;
  int? vote_count;

  TvSeries(
      {required this.backdrop_path,
      required this.first_air_date,
      required this.genreIds,
      required this.id,
      required this.name,
      required this.origin_country,
      required this.original_name,
      required this.overview,
      required this.popularity,
      required this.poster_path,
      required this.vote_average,
      required this.vote_count});

  TvSeries.watchList(
      {required this.id,
      required this.overview,
      required this.poster_path,
      required this.name});

  @override
  List<Object?> get props => [
        backdrop_path,
        first_air_date,
        genreIds,
        id,
        name,
        origin_country,
        original_name,
        overview,
        popularity,
        poster_path,
        vote_average,
        vote_count
      ];
}
