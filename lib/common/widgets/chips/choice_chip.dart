import 'package:ecommerceshop/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerceshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key, required this.text, required this.selected, this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label:  THelperFunctions.getColor(text) != null ? const SizedBox() : const Text(''),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      avatar: THelperFunctions.getColor(text) != null ? TCircularContainer(width: 50, height: 50, backgroundColor: THelperFunctions.getColor(text),),
      shape: const CircleBorder(),
      labelPadding: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      selectedColor: Colors.green,
      backgroundColor: Colors.green,
    );
  }
}
