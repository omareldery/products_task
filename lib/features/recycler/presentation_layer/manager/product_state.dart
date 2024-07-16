
import 'package:equatable/equatable.dart';
import 'package:products_task/features/recycler/data_layer/models/product_model.dart';

abstract class ProductState extends Equatable {
  const ProductState();


  @override
  List<Object> get props => [];
}
final class ProductsInitial extends ProductState {}
final class ProductsLoading extends ProductState {}
final class ProductsSuccess extends ProductState {
  final List<ProductModel> products;
  const ProductsSuccess( this.products);
  @override
  List<Object> get props => [products];
}
class ProductsError extends ProductState {
  final String message;

  const ProductsError(this.message);
  @override
  List<Object> get props => [message];
}