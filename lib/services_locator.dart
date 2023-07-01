import 'package:get_it/get_it.dart';
import 'package:only_good_news/core/services/api_service.dart';
import 'package:only_good_news/features/show_news/data/datasources/fetch_from_remote_ds.dart';
import 'package:only_good_news/features/show_news/data/repositories/fetch_repo_impl.dart';
import 'package:only_good_news/features/show_news/domain/repositories/fetch_repo_contract.dart';

final GetIt sl = GetIt.instance;

void setUpServices() {
  sl.registerSingleton<ApiService>(ApiServiceImpl());
  sl.registerSingleton<FetchFromRemoteDatasource>(FetchFromRemoteDSImpl());
  sl.registerSingleton<FetchRepo>(FetchRepoImpl());
}
