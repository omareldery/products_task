import 'package:flutter/material.dart';
import 'package:products_task/core/helper/colors_manager.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 16,),
            child: Image.asset(
              'assets/images/route_logo.png',
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
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
              IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined,color: ColorsManager.kPrimaryColor,))
            ],
          )
                ],
              ),
        ));
  }
}
