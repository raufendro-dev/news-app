part of 'news_search_bloc.dart';

@immutable
class NewsSearchState {}

class NewsSearchInitial extends NewsSearchState {
  final List<Article> news;
  NewsSearchInitial({required this.news});
}
