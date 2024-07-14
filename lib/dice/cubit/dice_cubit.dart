import 'dart:math';

import 'package:bloc/bloc.dart';

class DiceCubit extends Cubit<int> {
  DiceCubit(Random randome)
      : _randome = randome,
        super(randome.nextInt(6) + 1);

  final Random _randome;

  void roll() {
    emit(_randome.nextInt(6) + 1);
  }
}
