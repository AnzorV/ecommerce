import 'package:ecommerceshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerceshop/common/widgets/texts/product_price_text.dart';
import 'package:ecommerceshop/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceshop/utils/constants/colors.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:ecommerceshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../common/widgets/texts/section_heading.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child:   Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Price : ', smallSize: true,),

                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems,),

                          const TProductPriceText(price: '20'),
                        ],
                      ),
                      
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock : ', smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
                        ],
                      ),
                    ],
                  ),


    
                ],
              ),
              
              const TProductTitleText(title: 'This is the Description of the Product and it can go upto max 4 lines.', smallSize: true, maxLines: 4,)
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        const Column(
          children: [
            TSectionHeading(title: 'Colors'),
            SizedBox(height: TSizes.spaceBtwItems/2),
            TChoiceChip(text: 'Green', selected: true,),
          ],
        ),

      ],
    );
  }
}
