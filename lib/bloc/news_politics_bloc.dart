import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/model/news_model.dart';

part 'news_politics_event.dart';
part 'news_politics_state.dart';

class NewsPoliticsBloc extends Bloc<NewsPoliticsEvent, List> {
  NewsPoliticsBloc() : super([]) {
    on<NewsPoliticsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
