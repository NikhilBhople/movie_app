import 'package:equatable/equatable.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();
}

class InitialCategoryState extends CategoryState {
  @override
  List<Object> get props => [];
}
