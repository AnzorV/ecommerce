import 'package:ecommerceshop/common/widgets/appbar/appbar.dart';
import 'package:ecommerceshop/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerceshop/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerceshop/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerceshop/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerceshop/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerceshop/utils/constants/colors.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:ecommerceshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TProductImageSlider(),

            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  TRatingAndShare(),

                  TProductMetaData(),


                  TProductAttributes(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24,),
         const SizedBox(width: TSizes.spaceBtwItems/2,),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '5.0 ', style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: '(199)'),
                ]
              )
            )
          ],
        ),
        IconButton(onPressed: (){}, icon: const Icon(Icons.share, size: TSizes.iconMd,)),
      ],
    );
  }
}

