part of 'news_sport_bloc.dart';

@immutable
sealed class NewsSportEvent {
  final List<Article> news;
  NewsSportEvent({required this.news});
}
