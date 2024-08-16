import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String label;
  final bool isSelected;
  final String image;
  final double screenHeight;

  const GenderCard({
    required this.label,
    required this.isSelected,
    required this.image,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF24263B) : const Color(0xFF333244),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: screenHeight * 0.02,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}