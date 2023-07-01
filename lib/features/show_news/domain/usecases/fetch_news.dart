import 'package:dartz/dartz.dart';
import 'package:only_good_news/core/failures_successes/failures.dart';
import 'package:only_good_news/features/show_news/domain/entities/news_info.dart';
import 'package:only_good_news/features/show_news/domain/repositories/fetch_repo_contract.dart';

import '../../../../services_locator.dart';

class FetchNewsUsecase {
  FetchRepo fetchRepo = sl<FetchRepo>();

  FetchNewsUsecase();

  Future<Either<Failure, List<NewsInfo>>> fetchNews(String? searchText) async {
    Failure failure = FetchFailure(message: '');
    return fetchRepo.fetchNews(searchText);
  }
}
