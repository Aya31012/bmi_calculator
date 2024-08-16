import 'package:flutter/material.dart';
import 'package:mpi_calculator/widgets/gender_card.dart';

class GenderSelection extends StatelessWidget {
  final bool isMale;
  final ValueChanged<bool> onGenderSelected;
  final double screenHeight;

  const GenderSelection({
    required this.isMale,
    required this.onGenderSelected,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => onGenderSelected(true),
            child: GenderCard(
              label: 'Male',
              isSelected: isMale,
              image: 'assets/images/img_2.png',
              screenHeight: screenHeight,
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: GestureDetector(
            onTap: () => onGenderSelected(false),
            child: GenderCard(
              label: 'Female',
              isSelected: !isMale,
              image: 'assets/images/img.png',
              screenHeight: screenHeight,
            ),
          ),
        ),
      ],
    );
  }
}
