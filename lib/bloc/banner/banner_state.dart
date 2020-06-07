import 'package:equatable/equatable.dart';

abstract class BannerState extends Equatable {
  const BannerState();
}

class InitialBannerState extends BannerState {
  @override
  List<Object> get props => [];
}
