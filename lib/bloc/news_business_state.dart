part of 'news_business_bloc.dart';

@immutable
class NewsBusinessState {}

final class NewsBusinessInitial extends NewsBusinessState {
  final List<Article> news;
  NewsBusinessInitial({required this.news});
}
