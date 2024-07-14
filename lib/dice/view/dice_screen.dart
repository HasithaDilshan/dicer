import 'package:dicer/dice/cubit/dice_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiceScreen extends StatelessWidget {
  const DiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiceCubit, int>(
      builder: (context, state) {
        final width = MediaQuery.sizeOf(context).width;
        final height = MediaQuery.sizeOf(context).height;
        return Center(
          child: Image.asset(
            'assets/images/dice-$state.png',
            width: width > height ? height * 0.5 : width * 0.5,
          ),
        );
      },
    );
  }
}
