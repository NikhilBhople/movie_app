import 'package:equatable/equatable.dart';

abstract class BannerEvent extends Equatable {
  const BannerEvent();
  @override
  List<Object> get props => [];
}

class AppStartEvent extends BannerEvent {}

