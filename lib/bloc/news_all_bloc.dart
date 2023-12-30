import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/model/news_model.dart';

part 'news_all_event.dart';
part 'news_all_state.dart';

class NewsAllBloc extends Bloc<NewsAllEvent, List> {
  NewsAllBloc() : super([]) {
    on<NewsAllEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
