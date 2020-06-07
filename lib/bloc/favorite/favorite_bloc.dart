import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  @override
  FavoriteState get initialState => InitialFavoriteState();

  @override
  Stream<FavoriteState> mapEventToState(
    FavoriteEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
