import 'package:ecommerceshop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerceshop/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceshop/features/shop/screens/all_products/all_products.dart';
import 'package:ecommerceshop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerceshop/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerceshop/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
                child: Column(
                  children: [
                     THomeAppBar(),
                     SizedBox(height: TSizes.spaceBtwSections),

                    TSearchContainer(text: 'Search in Store'),
                    SizedBox(height: TSizes.spaceBtwSections),

                    Padding(
                     padding: EdgeInsets.only(left: TSizes.defaultSpace),
                     child: Column(
                       children: [
                         TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white),
                         SizedBox(height: TSizes.spaceBtwItems),

                         THomeCategories(),
                      ],
                     ),
                    ),
                    SizedBox(height: TSizes.spaceBtwSections,),
                  ],
                )
            ),

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                   TSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwItems),


                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}








