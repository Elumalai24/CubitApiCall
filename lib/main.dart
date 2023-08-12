import 'package:bloc_cubit/cubit/product_cubit.dart';
import 'package:bloc_cubit/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => ProductCubit(),
        child:  const MaterialApp(home: HomeScreen()));
  }
}
