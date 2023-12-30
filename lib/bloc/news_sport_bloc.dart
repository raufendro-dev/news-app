import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/model/news_model.dart';

part 'news_sport_event.dart';
part 'news_sport_state.dart';

class NewsSportBloc extends Bloc<NewsSportEvent, List> {
  NewsSportBloc() : super([]) {
    on<NewsSportEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
