part of 'news_politics_bloc.dart';

@immutable
class NewsPoliticsEvent {
  final List<Article> news;
  NewsPoliticsEvent({required this.news});
}
