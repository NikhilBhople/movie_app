import 'package:equatable/equatable.dart';

abstract class PopularState extends Equatable {
  const PopularState();
}

class InitialPopularState extends PopularState {
  @override
  List<Object> get props => [];
}
