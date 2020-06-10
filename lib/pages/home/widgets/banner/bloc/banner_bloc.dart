import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:movieapp/pages/home/widgets/banner/repository/banner_repository.dart';
import 'bloc.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {

  BannerRepository _repository = BannerRepository();

  @override
  BannerState get initialState => LoadingBannerState();

  @override
  Stream<BannerState> mapEventToState(BannerEvent event,) async* {

    if (event is AppStartEvent) {
      yield LoadingBannerState();
      yield LoadedBannerState(moviesList: _repository.getBannerList());
    }
  }
}
