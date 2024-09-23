import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(shrinkWrap: true, separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections,), itemCount: 10, itemBuilder: (_, index) =>  const Column(
      children: [
        TCartItem(),
        SizedBox(height: TSizes.spaceBtwItems,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 70,),
                TProductQuantityWithAddRemoveButton(),

              ],
            ),
            TProductPriceText(price: '256'),
          ],
        ),
      ],
    ),
    );
  }
}
