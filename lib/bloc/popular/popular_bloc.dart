import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class PopularBloc extends Bloc<PopularEvent, PopularState> {
  @override
  PopularState get initialState => InitialPopularState();

  @override
  Stream<PopularState> mapEventToState(
    PopularEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
