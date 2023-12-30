part of 'news_business_bloc.dart';

@immutable
sealed class NewsBusinessEvent {
  final List<Article> news;
  NewsBusinessEvent({required this.news});
}
