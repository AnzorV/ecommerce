import 'package:ecommerceshop/common/widgets/appbar/appbar.dart';
import 'package:ecommerceshop/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerceshop/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceshop/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerceshop/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:ecommerceshop/utils/constants/colors.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:ecommerceshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,),),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: ListView.separated(shrinkWrap: true, separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections,), itemCount: 4, itemBuilder: (_, index) => const Column(
        children: [
          TCartItem(),
        ],
      ),),
      ),
    ),
    );
  }
}

