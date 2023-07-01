import 'package:only_good_news/core/constants/strings.dart';
import 'package:only_good_news/core/failures_successes/exceptions.dart';
import 'package:only_good_news/core/services/api_service.dart';
import 'package:only_good_news/features/show_news/data/models/info_%20news_model.dart';
import 'package:only_good_news/features/show_news/domain/entities/news_info.dart';

import '../../../../services_locator.dart';

abstract class FetchFromRemoteDatasource {
  Future<List<NewsInfoModel>> fetchNews(String? searchText);
}

class FetchFromRemoteDSImpl implements FetchFromRemoteDatasource {
  ApiService apiService = sl<ApiService>();

  FetchFromRemoteDSImpl();

  @override
  Future<List<NewsInfoModel>> fetchNews(String? searchText) async {
    try {
      Map<String, dynamic> data = await apiService.getData(
          searchText != null ? Strings.apiEverything : Strings.apiTopHeadlines,
          {
            'apiKey': Strings.apiKey,
            if (searchText == null) 'country': 'us',
            if (searchText != null) 'q': searchText,
          });
      List list = data['articles'];
      List<Map<String, dynamic>> mapList = [];
      for (int i = 0; i < list.length; i++) {
        Map<String, dynamic> map = list[i] as Map<String, dynamic>;
        mapList.add(map);
      }
      List<NewsInfoModel> news = [];
      for (int i = 0; i < mapList.length; i++) {
        NewsInfoModel newsInfoModel = NewsInfoModel.fromMap(mapList[i]);
        news.add(newsInfoModel);
      }
      return news;
    } catch (e) {
      throw FetchException(message: 'Failed to get data.');
    }
  }
}
