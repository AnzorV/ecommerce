import 'package:ecommerceshop/common/widgets/icons/t_circular_image.dart';
import 'package:ecommerceshop/common/widgets/texts/product_price_text.dart';
import 'package:ecommerceshop/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceshop/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerceshop/utils/constants/enums.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
Row(
  children: [
    TRoundedContainer(
      radius: TSizes.sm,
      backgroundColor: TColors.secondary.withOpacity(0.8),
      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
    ),
    const SizedBox(width: TSizes.spaceBtwItems,),
    
    Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
    const SizedBox(width: TSizes.spaceBtwItems,),
const TProductPriceText(price: '175', isLarge: true,),
  ],
),

        const SizedBox(height: TSizes.spaceBtwItems/1.5,),

        const TProductTitleText(title: 'Green Nike Sports Shirt',),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        Row(
          children: [
            const TProductTitleText(title: 'Status',),
            const SizedBox(height: TSizes.spaceBtwItems),

            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),

          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
        
         Row(
          children: [
            TCircularImage(image: TImages.shoeIcon, width: 32, height: 32, overlayColor:  darkMode ? TColors.white : TColors.black,),
            const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,),
          ],
        ),
      ],
    );
  }
}