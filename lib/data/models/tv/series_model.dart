import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/series.dart';
import 'package:equatable/equatable.dart';

class TvSeriesModel extends Equatable {
  TvSeriesModel(
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

  final String? backdrop_path;
  final String? first_air_date;
  final List<int> genreIds;
  final int id;
  final String name;
  final List<String> origin_country;
  final String original_name;
  final String overview;
  final double popularity;
  final String? poster_path;
  final double vote_average;
  final int vote_count;

factory TvSeriesModel.fromJson(Map<String, dynamic> json) => TvSeriesModel(
    backdrop_path: json["backdrop_path"],
    first_air_date: json["first_air_date"],
    genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
    id: json["id"],
    name: json["name"],
    origin_country: List<String>.from(json["origin_country"].map((x) => x)),
    original_name: json["original_name"],
    overview: json["overview"],
    popularity: json["popularity"].toDouble(),
    poster_path: json["poster_path"],
    vote_average: json["vote_average"].toDouble(),
    vote_count: json["vote_count"]
);

Map<String, dynamic> toJson() =>{
  "backdrop_path": backdrop_path,
  "first_air_date": first_air_date,
  "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
  "id": id,
  "name": name,
  "origin_country": origin_country,
  "original_name": original_name,
  "overview": overview,
  "popularity": popularity,
  "poster_path": poster_path,
  "vote_average": vote_average,
  "vote_count": vote_count
};

TvSeries toEntity(){
  return TvSeries(
      backdrop_path: this.backdrop_path,
      first_air_date: this.first_air_date,
      genreIds: this.genreIds,
      id: this.id,
      name: this.name,
      origin_country: this.origin_country,
      original_name: this.original_name,
      overview: this.overview,
      popularity: this.popularity,
      poster_path: this.poster_path,
      vote_average: this.vote_average,
      vote_count: this.vote_count
  );
}

  @override
  // TODO: implement props
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
