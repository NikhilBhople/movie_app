import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:movieapp/pages/home/widgets/category/repository/category_repository.dart';
import 'bloc.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository _repository = CategoryRepository();

  @override
  CategoryState get initialState => CategoryLoadingState();

  @override
  Stream<CategoryState> mapEventToState(CategoryEvent event,) async* {
    if (event is CategoryAppStartEvent) {
      yield CategoryLoadingState();
      // If you make API call in repository then you need below code
      // List<Label> labels = await _repository.getCategoryList();
      yield CategoryLoadedState(_repository.getCategoryList());
    }
  }
}
