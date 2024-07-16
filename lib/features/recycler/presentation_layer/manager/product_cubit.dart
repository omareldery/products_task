import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_task/core/utils/api_service.dart';
import 'package:products_task/features/recycler/data_layer/models/product_model.dart';
import 'package:products_task/features/recycler/data_layer/repos/product_repo.dart';
import 'package:products_task/features/recycler/presentation_layer/manager/product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final DioService _dioService = DioService();
  final ProductRepository productRepository;
  ProductCubit(this.productRepository) : super(ProductsInitial());



  Future<void> fetchProducts() async {
    try {
      emit(ProductsLoading());
      final response = await _dioService.fetchProducts();
      final List<ProductModel> products = (response.data['products'] as List)
          .map((json) => ProductModel.fromJson(json)).toList();
      emit(ProductsSuccess(products));
    } catch (e,s) {
      log(s.toString());
      emit(ProductsError('Failed to fetch products: $e'));
    }

  }
}