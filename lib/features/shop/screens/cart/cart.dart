import 'package:ecommerceshop/common/widgets/appbar/appbar.dart';
import 'package:ecommerceshop/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerceshop/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceshop/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
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
      child: ListView.separated(shrinkWrap: true, separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections,), itemCount: 4, itemBuilder: (_, index) => Column(
        children: [
          Row(
            children: [
              TRoundedImage(imageUrl: TImages.productImage1, width: 60, height: 60, padding: const EdgeInsets.all(TSizes.sm), backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,),

              const SizedBox(width: TSizes.spaceBtwItems,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(title: 'Nike'),
                const Flexible(child: TProductTitleText(title: 'Black Sports Shoes', maxLines: 1,)),

                Text.rich(
                  TextSpan(
                    children:  [
                      TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                      TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'UK 08 ', style: Theme.of(context).textTheme.bodyLarge),
                    ]
                  )
                )
                ],
              )
            ],

          )
        ],
      ),),
      ),
    ),
    );
  }
}
