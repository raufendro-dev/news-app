import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'news_business_event.dart';
part 'news_business_state.dart';

class NewsBusinessBloc extends Bloc<NewsBusinessEvent, NewsBusinessState> {
  NewsBusinessBloc() : super(NewsBusinessInitial()) {
    on<NewsBusinessEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
