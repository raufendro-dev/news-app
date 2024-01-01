part of 'news_all_bloc.dart';

@immutable
class NewsAllState {}

class NewsAllInitial extends NewsAllState {
  final List<Article> news;
  NewsAllInitial({required this.news});
}
