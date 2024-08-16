import 'package:flutter/material.dart';
class HeightSlider extends StatelessWidget {
  final double sliderValue;
  final ValueChanged<double> onChanged;
  final double screenHeight;

  const HeightSlider({
    required this.sliderValue,
    required this.onChanged,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xFF333244),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Height',
            style: TextStyle(
              fontSize: screenHeight * 0.02,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          Text(
            '${sliderValue.round()} cm',
            style: TextStyle(
              fontSize: screenHeight * 0.03,
              color: Colors.white,
            ),
          ),
          Slider(
            value: sliderValue,
            min: 50,
            max: 200,
            divisions: 200,
            onChanged: onChanged,
            activeColor: const Color(0xFFE83D67),
            inactiveColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
