part of 'news_search_bloc.dart';

@immutable
class NewsSearchEvent {
  final List<Article> news;
  NewsSearchEvent({required this.news});
}
