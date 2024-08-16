import 'package:flutter/material.dart';
class CalculateButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double screenHeight;

  const CalculateButton({
    required this.onPressed,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
          backgroundColor: const Color(0xFFE83D67),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          textStyle: TextStyle(fontSize: screenHeight * 0.025),
        ),
        child: const Text('Calculate'),
      ),
    );
  }
}
