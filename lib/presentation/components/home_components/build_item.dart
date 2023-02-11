import 'package:flutter/material.dart';

import '../../model/product_model.dart';

class BuildItem extends StatelessWidget {
  final Color color;
  final ProductModel model;

  //int randomNumber = Random().nextInt(5);

  const BuildItem({
    super.key, required this.model, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 160,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: 90,
            child: Image.asset(model.image),
          ),
          Text(
            model.name,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}