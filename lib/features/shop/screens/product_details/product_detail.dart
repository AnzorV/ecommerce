import 'package:ecommerceshop/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerceshop/utils/constants/colors.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:ecommerceshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TCurvedEdgesWidget(child: Container(
              color: dark ? TColors.darkerGrey : TColors.light,
              child:   Stack(
                children: [
                  const SizedBox(
                      height: 400,
                      child: Padding(
                      padding: EdgeInsets.all(TSizes.productImageRadius * 2 ),
                        child: Center(child: Image(image: AssetImage(TImages.productImage1))),
                  ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 30,
                    left: TSizes.defaultSpace,
                    child: SizedBox(
                      height: 80,
                      child: ListView.separated(
                        shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const AlwaysScrollableScrollPhysics(),
                          separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                          itemCount: 6,
                          itemBuilder: (_, index) =>
                          TRoundedImage(
                        width: 80,
                        backgroundColor: dark ? TColors.dark : TColors.white,
                        border: Border.all(color: TColors.primary),
                        padding: const EdgeInsets.all(TSizes.sm),
                        imageUrl: TImages.productImage3,
                      ),

                      ),
                    ),
                  ),
                ],
              ),
            ),),

          ],
        ),
      ),
    );
  }
}
