part of 'news_health_bloc.dart';

@immutable
class NewsHealthEvent {
  final List<Article> news;
  NewsHealthEvent({required this.news});
}
