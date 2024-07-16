import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_task/core/helper/colors_manager.dart';
import 'package:products_task/features/recycler/data_layer/repos/product_repo.dart';
import 'package:products_task/features/recycler/presentation_layer/manager/product_cubit.dart';
import 'package:products_task/features/recycler/presentation_layer/widgets/recycler_body.dart';

class RecyclerView extends StatelessWidget {
  const RecyclerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child: Image.asset(
                  'assets/images/route_logo.png',
                ),
              ),
              SizedBox(height: 16.h,),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.w),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'What do you search for?',
                            prefixIcon: Icon(Icons.search,color: ColorsManager.kPrimaryColor,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(26)),
          
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderSide: BorderSide(color: ColorsManager.kPrimaryColor),
                              borderRadius: BorderRadius.all(Radius.circular(26)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: ColorsManager.kPrimaryColor),
                              borderRadius: BorderRadius.all(Radius.circular(26)),
          
                            )
                        ),
          
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: ColorsManager.kPrimaryColor,
                    ),
                  )
                ],
              ),
              Expanded(
                child: BlocProvider(
                      create: (context) => ProductCubit(ProductRepository())..fetchProducts(),
                      child: Padding(
                        padding:  EdgeInsets.only(top: 16.h),
                        child: const RecyclerBody(),
                      ),
                    ),
              ),
            ],
          ),
        ));
  }
}
