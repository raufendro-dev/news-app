import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/model/news_model.dart';

part 'news_health_event.dart';
part 'news_health_state.dart';

class NewsHealthBloc extends Bloc<NewsHealthEvent, List> {
  NewsHealthBloc() : super([]) {
    on<NewsHealthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
