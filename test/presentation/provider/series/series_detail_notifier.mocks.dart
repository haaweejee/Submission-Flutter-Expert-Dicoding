// Mocks generated by Mockito 5.2.0 from annotations
// in ditonton/test/presentation/provider/series/series_detail_notifier.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:ditonton/common/failure.dart' as _i6;
import 'package:ditonton/domain/entities/series.dart' as _i9;
import 'package:ditonton/domain/entities/series_detail.dart' as _i7;
import 'package:ditonton/domain/repositories/tvseries_repository.dart' as _i2;
import 'package:ditonton/domain/usecases/tv/get_series_detail.dart' as _i4;
import 'package:ditonton/domain/usecases/tv/get_series_recommendations.dart'
    as _i8;
import 'package:ditonton/domain/usecases/tv/get_watchlist_series_status.dart'
    as _i10;
import 'package:ditonton/domain/usecases/tv/remove_watchlist_series.dart'
    as _i12;
import 'package:ditonton/domain/usecases/tv/save_watchlist.dart' as _i11;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeTvSeriesRepository_0 extends _i1.Fake
    implements _i2.TvSeriesRepository {}

class _FakeEither_1<L, R> extends _i1.Fake implements _i3.Either<L, R> {}

/// A class which mocks [GetSeriesDetail].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetSeriesDetail extends _i1.Mock implements _i4.GetSeriesDetail {
  MockGetSeriesDetail() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvSeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTvSeriesRepository_0()) as _i2.TvSeriesRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, _i7.TvSeriesDetail>> execute(dynamic id) =>
      (super.noSuchMethod(Invocation.method(#execute, [id]),
              returnValue:
                  Future<_i3.Either<_i6.Failure, _i7.TvSeriesDetail>>.value(
                      _FakeEither_1<_i6.Failure, _i7.TvSeriesDetail>()))
          as _i5.Future<_i3.Either<_i6.Failure, _i7.TvSeriesDetail>>);
}

/// A class which mocks [GetSeriesRecommendation].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetSeriesRecommendation extends _i1.Mock
    implements _i8.GetSeriesRecommendation {
  MockGetSeriesRecommendation() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvSeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTvSeriesRepository_0()) as _i2.TvSeriesRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i9.TvSeries>>> execute(dynamic id) =>
      (super.noSuchMethod(Invocation.method(#execute, [id]),
              returnValue:
                  Future<_i3.Either<_i6.Failure, List<_i9.TvSeries>>>.value(
                      _FakeEither_1<_i6.Failure, List<_i9.TvSeries>>()))
          as _i5.Future<_i3.Either<_i6.Failure, List<_i9.TvSeries>>>);
}

/// A class which mocks [GetTvSeriesWatchListStatus].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetTvSeriesWatchListStatus extends _i1.Mock
    implements _i10.GetTvSeriesWatchListStatus {
  MockGetTvSeriesWatchListStatus() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvSeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTvSeriesRepository_0()) as _i2.TvSeriesRepository);
  @override
  _i5.Future<bool> execute(int? id) =>
      (super.noSuchMethod(Invocation.method(#execute, [id]),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
}

/// A class which mocks [SaveSeriesWatchlist].
///
/// See the documentation for Mockito's code generation for more information.
class MockSaveSeriesWatchlist extends _i1.Mock
    implements _i11.SaveSeriesWatchlist {
  MockSaveSeriesWatchlist() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvSeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTvSeriesRepository_0()) as _i2.TvSeriesRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, String>> execute(
          _i7.TvSeriesDetail? series) =>
      (super.noSuchMethod(Invocation.method(#execute, [series]),
              returnValue: Future<_i3.Either<_i6.Failure, String>>.value(
                  _FakeEither_1<_i6.Failure, String>()))
          as _i5.Future<_i3.Either<_i6.Failure, String>>);
}

/// A class which mocks [RemoveSeriesWatchlist].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoveSeriesWatchlist extends _i1.Mock
    implements _i12.RemoveSeriesWatchlist {
  MockRemoveSeriesWatchlist() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvSeriesRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTvSeriesRepository_0()) as _i2.TvSeriesRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, String>> execute(
          _i7.TvSeriesDetail? series) =>
      (super.noSuchMethod(Invocation.method(#execute, [series]),
              returnValue: Future<_i3.Either<_i6.Failure, String>>.value(
                  _FakeEither_1<_i6.Failure, String>()))
          as _i5.Future<_i3.Either<_i6.Failure, String>>);
}
