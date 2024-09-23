import 'package:ecommerceshop/common/widgets/appbar/appbar.dart';
import 'package:ecommerceshop/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerceshop/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerceshop/common/widgets/texts/product_price_text.dart';
import 'package:ecommerceshop/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceshop/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerceshop/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerceshop/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerceshop/utils/constants/colors.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:ecommerceshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/cart/add_remove_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,),),
    body: const SingleChildScrollView(
      child: TCartItem()
    ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: const Text('Checkout \$256.0')),
      ),
    );
  }
}


