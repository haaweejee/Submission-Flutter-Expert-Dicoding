import 'dart:convert';

import 'package:ditonton/data/models/tv/series_model.dart';
import 'package:ditonton/data/models/tv/series_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../json_reader.dart';

void main() {
  final tTvSeriesModel = TvSeriesModel(
      name: '',
      genreIds: [1,1],
      poster_path: '',
      first_air_date: '',
      backdrop_path: '',
      popularity: 0.0,
      vote_count: 0,
      original_name: '',
      origin_country: ["us","id"],
      overview: '',
      vote_average: 0,
      id: 1
  );
  final tTvModelResponseModel =
  TvSeriesResponse(results: <TvSeriesModel>[tTvSeriesModel]);
  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
      json.decode(readJson('dummy_data/popular_series.json'));
      // act
      final result = TvSeriesResponse.fromJson(jsonMap);
      // assert
      expect(result, tTvModelResponseModel);
    });
  });
}
