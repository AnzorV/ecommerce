import 'package:ecommerceshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerceshop/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecommerceshop/utils/constants/colors.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:ecommerceshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
children: [
  Row(
    children: [

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1),),
          const SizedBox(width: TSizes.spaceBtwItems,),
          Text('John Doe', style: Theme.of(context).textTheme.titleLarge,),
        ],
      ),
      IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
    ],
  ),
  const SizedBox(width: TSizes.spaceBtwItems,),
  
  Row(
    children: [
      const TRatingBarIndicator(rating: 4),
      const SizedBox(width: TSizes.spaceBtwItems,),

      Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium,),
    ],
  ),
  const SizedBox(height: TSizes.spaceBtwItems,),
  const ReadMoreText('The user interface of the app is quite infinitive. I was able to navigate and make purchases seamlessly. Great Job!', trimLines: 2, trimExpandedText: ' show less', trimCollapsedText: ' show more', trimMode: TrimMode.Line, moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary)),
  const SizedBox(height: TSizes.spaceBtwItems,),

  TRoundedContainer(
    backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
    child:  Padding(
        padding: const EdgeInsets.all(TSizes.md),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Iztmivekov's Store", style: Theme.of(context).textTheme.titleMedium,),
              Text("02 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium,),

            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems,),

          const ReadMoreText('The user interface of the app is quite infinitive. I was able to navigate and make purchases seamlessly. Great Job!', trimLines: 2, trimExpandedText: ' show less', trimCollapsedText: ' show more', trimMode: TrimMode.Line, moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary)),

        ],
      ),
    ),
  ),
  const SizedBox(height: TSizes.spaceBtwSections,),
],
    );
  }
}
