import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'news_sport_event.dart';
part 'news_sport_state.dart';

class NewsSportBloc extends Bloc<NewsSportEvent, NewsSportState> {
  NewsSportBloc() : super(NewsSportInitial()) {
    on<NewsSportEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
