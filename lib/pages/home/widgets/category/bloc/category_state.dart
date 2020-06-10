import 'package:equatable/equatable.dart';
import 'package:movieapp/model/movie_model.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();
  @override
  List<Object> get props => [];
}

class CategoryLoadingState extends CategoryState {}
class CategoryLoadedState extends CategoryState {
  final List<Label> labels;

  CategoryLoadedState(this.labels);
  @override
  List<Object> get props => [labels];
}