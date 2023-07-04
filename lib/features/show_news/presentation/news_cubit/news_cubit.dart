import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:only_good_news/core/failures_successes/failures.dart';
import 'package:only_good_news/features/show_news/domain/usecases/fetch_news.dart';

import '../../../../services_locator.dart';
import '../../domain/entities/news_info.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial(news: const []));
  final FetchNewsUsecase _fetchNewsUsecase = sl<FetchNewsUsecase>();

  void fetchNews(String? searchText) async {
    emit(NewsLoading());
    final Either<Failure, List<NewsInfo>> fetchNewsResult =
        await _fetchNewsUsecase.fetchNews(searchText);
    fetchNewsResult.fold((l) {
      emit(NewsError());
    }, (r) {
      emit(NewsInitial(news: r));
    });
  }
}
