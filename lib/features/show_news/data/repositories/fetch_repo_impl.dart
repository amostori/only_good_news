import 'package:dartz/dartz.dart';
import 'package:only_good_news/core/failures_successes/exceptions.dart';
import 'package:only_good_news/core/failures_successes/failures.dart';
import 'package:only_good_news/features/show_news/data/datasources/fetch_from_remote_ds.dart';
import 'package:only_good_news/features/show_news/domain/entities/news_info.dart';
import 'package:only_good_news/features/show_news/domain/repositories/fetch_repo_contract.dart';

import '../../../../services_locator.dart';

class FetchRepoImpl implements FetchRepo {
  final FetchFromRemoteDatasource fetchFromRemoteDatasource =
      sl<FetchFromRemoteDatasource>();

  FetchRepoImpl();

  @override
  Future<Either<Failure, List<NewsInfo>>> fetchNews(String? searchText) async {
    try {
      return right(await fetchFromRemoteDatasource.fetchNews(searchText));
    } on FetchException catch (e) {
      return left(FetchFailure(message: e.message));
    }
  }
}
