import 'package:ecommerceshop/common/widgets/appbar/appbar.dart';
import 'package:ecommerceshop/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerceshop/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerceshop/common/widgets/texts/section_heading.dart';
import 'package:ecommerceshop/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerceshop/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerceshop/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerceshop/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerceshop/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerceshop/utils/constants/colors.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:ecommerceshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TProductImageSlider(),

            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  const TRatingAndShare(),

                  const TProductMetaData(),


                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'),)),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  const TSectionHeading(title: 'Description', showActionButton: false,),
                  const ReadMoreText('This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am', trimLines: 2, trimMode: TrimMode.Line, trimCollapsedText: ' Show more', trimExpandedText: ' Less', moreStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.w800,), lessStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.w800,)),

                  const Divider(),
                   const SizedBox(height: TSizes.spaceBtwItems,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TSectionHeading(title: 'Reviews(199)', showActionButton: false,),
                        IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18,), onPressed: () => Get.to(() => const ProductReviewsScreen()),),
                      ],
                    ),
                   const SizedBox(height: TSizes.spaceBtwSections,),
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

