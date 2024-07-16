import 'package:flutter/material.dart';

class CustomGridView<T> extends StatelessWidget {
  final List<T> items;
  final int crossAxisCount;
  final double childAspectRatio;
  final Widget Function(BuildContext, T) itemBuilder;

  const CustomGridView({
    super.key,
    required this.items,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1.0,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) => itemBuilder(context, items[index]),
    );
  }
}
