import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/bloc/banner/banner_bloc.dart';
import 'package:movieapp/bloc/banner/banner_state.dart';

import 'top_banner_container.dart';

class BannerStateBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentState = BlocProvider
        .of<BannerBloc>(context)
        .state;
    if (currentState is InitialBannerState ||
        currentState is LoadingBannerState) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (currentState is LoadedBannerState) {
      return BannerContainer();
    }
  }
}
