import 'package:ecommerceshop/common/widgets/appbar/appbar.dart';
import 'package:ecommerceshop/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerceshop/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:ecommerceshop/common/widgets/texts/section_heading.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text("Sports"), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
       child: Column(
         children: [
           const TRoundedImage(width: double.infinity, imageUrl: TImages.promoBanner3, applyImageRadius: true,),
           const SizedBox(height: TSizes.spaceBtwSections,),

           Column(
             children: [
               TSectionHeading(title: 'Sports Shirts', onPressed: (){},),
               const SizedBox(height: TSizes.spaceBtwItems/2,),

              SizedBox(height: 120, child: ListView.separated(itemCount: 4, separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems,), scrollDirection: Axis.horizontal, itemBuilder: (context, index) => const TProductCardHorizontal())),
             ],
           )
         ],
       ),
        ),
      ),
    );
  }
}
