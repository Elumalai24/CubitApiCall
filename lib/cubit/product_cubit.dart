import 'package:bloc_cubit/repository/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(InitialState());
  ApiService api = ApiService();
  Future fetchProducts() async {
    final products = await api.getProducts();
    emit(LoadedState(products));
  }
}
