import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/series.dart';
import 'package:ditonton/domain/usecases/movies/get_popular_movies.dart';
import 'package:ditonton/domain/usecases/tv/get_popular_series.dart';
import 'package:ditonton/domain/usecases/tv/get_series_recommendations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/test_helper.mocks.dart';

void main() {
  late GetSeriesRecommendation usecase;
  late MockTvSeriesRepository mockRepository;

  setUp(() {
    mockRepository = MockTvSeriesRepository();
    usecase = GetSeriesRecommendation(mockRepository);
  });

  final tId = 1;
  final tSeries = <TvSeries>[];

  test(
      'should get list of recommendation series from detail in the repository when execute function is called',
          () async {
        // arrange
        when(mockRepository.getSeriesRecommendations(tId))
            .thenAnswer((_) async => Right(tSeries));
        // act
        final result = await usecase.execute(tId);
        // assert
        expect(result, Right(tSeries));
      });
}
