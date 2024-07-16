
import 'package:products_task/core/utils/api_service.dart';
import 'package:products_task/features/recycler/data_layer/models/product_model.dart';

class ProductRepository {
  final DioService _dioService = DioService();

  Future<List<ProductModel>> fetchProducts() async {
    try {
      final response = await _dioService.fetchProducts();
      return (response.data['products'] as List)
          .map((json) => ProductModel.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }
}