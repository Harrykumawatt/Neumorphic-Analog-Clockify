import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neumorphic_analog_clockiyfy/view_model/bloc/home_boc/home_states.dart';

class HomeBloc extends Cubit<HomeStates> {
  HomeBloc() : super(TabTwo());

  void changeTab(int index) {
    if (index == 0) {
      emit(TabOne());
    } else if (index == 1) {
      emit(TabTwo());
    } else if (index == 2) {
      emit(TabThree());
    } else {
      emit(TabFour());
    }
  }
}
