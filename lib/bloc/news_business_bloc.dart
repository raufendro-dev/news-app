import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/model/news_model.dart';

part 'news_business_event.dart';
part 'news_business_state.dart';

class NewsBusinessBloc extends Bloc<NewsBusinessEvent, List> {
  NewsBusinessBloc() : super([]) {
    on<NewsBusinessEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
