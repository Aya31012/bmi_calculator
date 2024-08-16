import 'package:flutter/material.dart';
import 'package:mpi_calculator/widgets/icons.dart';
class WeightAgeSelection extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;
  final double screenHeight;
  final double screenWidth;

  const WeightAgeSelection({
    required this.label,
    required this.value,
    required this.onIncrease,
    required this.onDecrease,
    required this.screenHeight,
    required this.screenWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF24263B),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: screenHeight * 0.02,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Text(
            '$value',
            style: TextStyle(
              fontSize: screenHeight * 0.03,
              color: Colors.white,
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedIconButton(
                icon: Icons.remove,
                onPressed: onDecrease,
                screenHeight: screenHeight,
              ),
              SizedBox(width: screenWidth * 0.06),
              RoundedIconButton(
                icon: Icons.add,
                onPressed: onIncrease,
                screenHeight: screenHeight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
