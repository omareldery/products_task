import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_task/features/recycler/presentation_layer/manager/product_cubit.dart';
import 'package:products_task/features/recycler/presentation_layer/manager/product_state.dart';
import 'package:products_task/features/recycler/presentation_layer/widgets/CustomGridView.dart';
import 'package:products_task/features/recycler/presentation_layer/widgets/product_card.dart';

class RecyclerBody extends StatelessWidget {
  const RecyclerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ProductsSuccess) {
          return CustomGridView(
            childAspectRatio: 0.6,
              items: state.products,
              itemBuilder: (context, product) {
                return ProductCard(product: product);
              });
        } else if (state is ProductsError) {
          return Center(child: Text('Error: ${state.message}'));
        } else {
          return const Center(child: Text('No products'));
        }
      },
    );
  }
}
