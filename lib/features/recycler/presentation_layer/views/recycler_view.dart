import 'package:flutter/material.dart';

class RecyclerView extends StatelessWidget {
  const RecyclerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset(
              'assets/images/route_image.png',
              height: 80,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'What do you search for?',
                      prefixIcon: Icon(Icons.search,color: Color(0xFF102F6B),),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(26)),

                      ),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF102F6B)),
                      borderRadius: BorderRadius.all(Radius.circular(26)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF102F6B)),
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
                color: Color(0xFF102F6B),
              ),
            )
          ],
        )
      ],
    ));
  }
}
