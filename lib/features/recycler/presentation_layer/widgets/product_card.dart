import 'package:flutter/material.dart';
import 'package:products_task/core/helper/colors_manager.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.all(Radius.circular(16)),
        side: BorderSide(color: ColorsManager.kPrimaryColor, width: 1),

      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('assets/images/route_logo.png'),
              height: 80,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              'Product name ',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: ColorsManager.kPrimaryColor, fontSize: 16),
            ),
            SizedBox(height: 8),
            Text('Product description'),
          ],
        ),
      ),
    );
  }
}
