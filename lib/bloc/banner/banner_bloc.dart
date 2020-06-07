import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  @override
  BannerState get initialState => InitialBannerState();

  @override
  Stream<BannerState> mapEventToState(
    BannerEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
