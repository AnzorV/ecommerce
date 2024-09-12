import 'package:ecommerceshop/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('Reviews & Ratings',), showBackArrow: true,),

      body: SingleChildScrollView(

      ),
    );
  }
}
