part of 'news_politics_bloc.dart';

@immutable
class NewsPoliticsState {}

class NewsPoliticsInitial extends NewsPoliticsState {
  final List<Article> news;
  NewsPoliticsInitial({required this.news});
}
