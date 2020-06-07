import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  @override
  CategoryState get initialState => InitialCategoryState();

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
