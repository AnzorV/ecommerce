import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$256.0', style: Theme.of(context).textTheme.bodyMedium),

          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems /2,),

        Row(
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge),

          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems /2,),

        Row(
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge),

          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems /2,),
        Row(
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge),

          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems /2,),

        Row(
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0', style: Theme.of(context).textTheme.titleMedium),

          ],
        ),


      ],
    );
  }
}
