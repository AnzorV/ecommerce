import 'package:ecommerceshop/common/widgets/appbar/appbar.dart';
import 'package:ecommerceshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerceshop/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerceshop/utils/constants/colors.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:ecommerceshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall,),),
   body: SingleChildScrollView(
     child: Padding(
       padding: const EdgeInsets.all(TSizes.defaultSpace),
       child: Column(
         children: [
           const TCartItems(showAddRemoveButtons: false,),
           const SizedBox(height: TSizes.spaceBtwSections,),


           const TCouponCode(),
           const SizedBox(height: TSizes.spaceBtwSections,),
         TRoundedContainer(
           showBorder: true,
           backgroundColor: dark ? TColors.black : TColors.white,
           child: Column(
             children: [

             ],
           ),
         )
         ],
       ),
     ),
   ),
    );
  }
}

