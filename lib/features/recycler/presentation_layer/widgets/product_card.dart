import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_task/core/helper/colors_manager.dart';
import 'package:products_task/features/recycler/data_layer/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel? product;
  const ProductCard({super.key, this.product});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Card(
        color: Colors.white,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          side: BorderSide(color: ColorsManager.kPrimaryColor, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                product?.thumbnail ?? 'No image',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.error_sharp,
                ),
              ),
              SizedBox(height: 8.h),
              Flexible(
                child: Text(
                  product?.title ?? '--',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: ColorsManager.kPrimaryColor, fontSize: 20),
                ),
              ),
              SizedBox(height: 8.h),
              Flexible(
                child: Text(
                  product?.description ?? '--',
                  maxLines: 1,
                  style: const TextStyle(color: ColorsManager.kPrimaryColor, fontSize: 16),
                ),
              ),
              SizedBox(height: 8.h),
              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                    text: 'EGP ',
                    style: TextStyle(color: ColorsManager.kPrimaryColor, fontSize: 16),
                  ),
                  TextSpan(
                    text: product?.price.toString() ?? '--',
                    style: const TextStyle(color: ColorsManager.kPrimaryColor, fontSize: 16),
                  ),
                ]),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Review ',
                          style: TextStyle(color: ColorsManager.kPrimaryColor, fontSize: 15),
                        ),
                        TextSpan(
                          text: '(${product?.rating.toString() ?? '--'})',
                          style: const TextStyle(color: ColorsManager.kPrimaryColor, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: const Color(0xFFFDD407), size: 20.h),
                ],
              ),
              SizedBox(height: 8.h),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 16.h,
        right: 16.w,
        child: Container(
          height: 25.h,
          width: 25.w,
          decoration: BoxDecoration(
            color: ColorsManager.kPrimaryColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      Positioned(
        right: -8.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 25.h,
                width: 25.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  color: Colors.transparent,
                ),
                child: Image.asset('assets/images/fav_ima.png'),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
