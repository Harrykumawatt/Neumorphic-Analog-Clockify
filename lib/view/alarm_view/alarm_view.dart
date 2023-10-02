import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neumorphic_analog_clockiyfy/res/constants.dart';
import 'package:neumorphic_analog_clockiyfy/view/alarm_view/components/body.dart';
import 'package:neumorphic_analog_clockiyfy/view/alarm_view/components/floating_button.dart';
import 'package:neumorphic_analog_clockiyfy/view_model/bloc/alaram_bloc/alarm_cubit.dart';

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({super.key});
  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<AlarmCubit>(context).getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingButton(),
      body: const SafeArea(
        child: Body(),
      ),
    );
  }
}
