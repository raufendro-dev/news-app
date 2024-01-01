part of 'news_health_bloc.dart';

@immutable
class NewsHealthState {}

class NewsHealthInitial extends NewsHealthState {
  final List<Article> news;
  NewsHealthInitial({required this.news});
}
