import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'news_all_event.dart';
part 'news_all_state.dart';

class NewsAllBloc extends Bloc<NewsAllEvent, NewsAllState> {
  NewsAllBloc() : super(NewsAllInitial()) {
    on<NewsAllEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
