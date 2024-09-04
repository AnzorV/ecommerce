import 'package:ecommerceshop/common/widgets/appbar/appbar.dart';
import 'package:ecommerceshop/common/widgets/icons/t_circular_image.dart';
import 'package:ecommerceshop/common/widgets/texts/section_heading.dart';
import 'package:ecommerceshop/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwItems /2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const TSectionHeading(title: 'Profile Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(onPressed: (){}, title: 'Name', value: 'Iztmivekov'),
              TProfileMenu(onPressed: (){}, title: 'Username', value: 'iztmivekov'),

              const SizedBox(height: TSizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              const TSectionHeading(title: 'Personal Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(onPressed: (){}, title: 'User ID', icon: Iconsax.copy, value: '45689'),
              TProfileMenu(onPressed: (){}, title: 'E-mail', value: 'iztmivekov'),
              TProfileMenu(onPressed: (){}, title: 'Phone Number', value: '+44-1234-678900'),
              TProfileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
              TProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '10 Oct, 1994'),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              
              Center(
                child: TextButton(onPressed: () {}, child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
