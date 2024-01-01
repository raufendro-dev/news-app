part of 'news_all_bloc.dart';

@immutable
class NewsAllEvent {
  final List<Article> news;
  NewsAllEvent({required this.news});
}
