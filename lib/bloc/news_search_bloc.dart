import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/model/news_model.dart';

part 'news_search_event.dart';
part 'news_search_state.dart';

class NewsSearchBloc extends Bloc<NewsSearchEvent, List> {
  NewsSearchBloc() : super([]) {
    on<NewsSearchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
