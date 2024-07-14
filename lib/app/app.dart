import 'dart:math';

import 'package:dicer/dice/dice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template dicer}
/// A simple app that can be used to rool a dice.
/// {@endtemplate}
class Dicer extends StatelessWidget {
  /// {@macro dicer}
  const Dicer({super.key});

  final seedColor = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DiceCubit(Random()),
      child: MaterialApp(
        title: 'Dicer',
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: seedColor,
          brightness: Brightness.light,
          scaffoldBackgroundColor: seedColor,
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: seedColor,
          brightness: Brightness.dark,
        ),
        themeMode: ThemeMode.system,
        home: Builder(builder: (context) {
          return Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
                context.read<DiceCubit>().roll();
              },
              icon: const Icon(Icons.casino),
              label: const Text('Roll'),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            body: const DiceScreen(),
          );
        }),
      ),
    );
  }
}
