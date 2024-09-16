import 'package:ecommerceshop/common/widgets/appbar/appbar.dart';
import 'package:ecommerceshop/utils/constants/colors.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:ecommerceshop/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Reviews & Ratings',), showBackArrow: true,),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Ratings and reviews are verified and are from people who use the same type of device that you use.'),
            const SizedBox(height: TSizes.spaceBtwItems),
          Row(
            children: [
              Expanded(flex: 3, child: Text('4.8', style: Theme.of(context).textTheme.displayLarge,)),

              Expanded(
                flex: 7,
                child: Column(
                  children: [
                    TRatingProgressIndicator()
                  ],
                ),
              )
            ],
          )
          ],
        ),

        ),

      ),
    );
  }
}

class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Text('5',style: Theme.of(context).textTheme.bodyMedium,)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: TDeviceUtils.getScreenWidth(context) * 0.5,
            child: LinearProgressIndicator(
              value: 0.5,
              minHeight: 11,
              backgroundColor: TColors.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(TColors.primary),
            ),
          ),
        )
      ],
    );
  }
}
