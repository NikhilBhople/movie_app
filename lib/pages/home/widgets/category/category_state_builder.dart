
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/pages/home/widgets/category/bloc/bloc.dart';
import 'package:movieapp/pages/home/widgets/category/categories.dart';

class CategoryStateBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var state = BlocProvider.of<CategoryBloc>(context).state;
    if (state is CategoryLoadingState) {
      return CircularProgressIndicator();
    }else if (state is CategoryLoadedState) {
      return BuildCategory(state: state);
    }
  }
}
