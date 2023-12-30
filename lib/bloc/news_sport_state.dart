part of 'news_sport_bloc.dart';

@immutable
class NewsSportState {}

final class NewsSportInitial extends NewsSportState {
  final List<Article> news;
  NewsSportInitial({required this.news});
}
