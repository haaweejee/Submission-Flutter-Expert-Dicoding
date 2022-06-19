import 'package:ditonton/data/models/tv/series_model.dart';
import 'package:ditonton/domain/entities/series.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tTvSeriesModel = TvSeriesModel(
      name: '',
      genreIds: [],
      poster_path: '',
      first_air_date: '',
      backdrop_path: '',
      popularity: 0.0,
      vote_count: 0,
      original_name: '',
      origin_country: [],
      overview: '',
      vote_average: 0,
      id: 1
  );

  final tTvSeries = TvSeries(
      name: '',
      genreIds: [],
      poster_path: '',
      first_air_date: '',
      backdrop_path: '',
      popularity: 0.0,
      vote_count: 0,
      original_name: '',
      origin_country: [],
      overview: '',
      vote_average: 0,
      id: 1
  );

  test('should be a subclass of Movie entity', () async {
    final result = tTvSeriesModel.toEntity();
    expect(result, tTvSeries);
  });
}
