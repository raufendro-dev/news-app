part of 'news_all_bloc.dart';

@immutable
sealed class NewsAllEvent {
  final List<Article> news;
  NewsAllEvent({required this.news});
}
