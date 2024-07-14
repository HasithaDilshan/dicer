import 'package:bloc/bloc.dart';
import 'package:dicer/app/app.dart';
import 'package:dicer/app/bloc_observer.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = const AppBlocObserver();
  runApp(const Dicer());
}
