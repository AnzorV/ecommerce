import 'package:ecommerceshop/common/widgets/appbar/appbar.dart';
import 'package:ecommerceshop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerceshop/common/widgets/icons/t_circular_image.dart';
import 'package:ecommerceshop/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:ecommerceshop/common/widgets/texts/section_heading.dart';
import 'package:ecommerceshop/utils/constants/colors.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(child: Column(
              children: [
                TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),)),
                const SizedBox(height: TSizes.spaceBtwSections),

                 const TUserProfileTile(),
               const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
            ),
            
             Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
               children: [
                 const TSectionHeading(title: 'Account Settings', showActionButton: false,),
                 const SizedBox(height: TSizes.spaceBtwItems,),

                 TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subtitle: 'Set shopping delivery address'),
                 TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add, remove products and move to checkout'),
                 TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subtitle: 'In-progress and Completed Orders'),
                 TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balance to registered bank account'),
                 TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the discounted coupons'),
                 TSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subtitle: 'Set any kind of notification message'),
                 TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connected accounts'),

               SizedBox(height: TSizes.s,)
               ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

