import 'package:equatable/equatable.dart';

import '../model/product.dart';

abstract class ProductState extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialState extends ProductState {}

class LoadedState extends ProductState {
  final List<Product> products;
  LoadedState(this.products);
  @override
  List<Object> get props => [products];
}
