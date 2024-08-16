import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final double result;

  const SecondPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI Calculator')),
        backgroundColor: const Color(0xFF24263B),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: const Color(0xFF1C2135),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * 0.03),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.04),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: screenHeight * 0.04,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.6,
              padding: EdgeInsets.all(screenWidth * 0.04),
              decoration: BoxDecoration(
                color: const Color(0xFF333244),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF333244),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _getResultCategory(result),
                    style: TextStyle(
                      fontSize: screenHeight * 0.03,
                      color: _getResultColor(result),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    result.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: screenHeight * 0.06,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    _getResultDescription(result),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenHeight * 0.02,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
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
                child: const Text('Re-Calculate'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getResultCategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'Normal';
    } else if (bmi >= 25 && bmi < 29.9) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }

  Color _getResultColor(double bmi) {
    if (bmi < 18.5) {
      return const Color(0xFF21BF73); // Green for Normal
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return const Color(0xFF21BF73); // Green for Normal
    } else if (bmi >= 25 && bmi < 29.9) {
      return const Color(0xFFF7C048); // Yellow for Overweight
    } else {
      return const Color(0xFFE83D67); // Red for Obesity
    }
  }

  String _getResultDescription(double bmi) {
    if (bmi < 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'You have a normal body weight. Good job!';
    } else if (bmi >= 25 && bmi < 29.9) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else {
      return 'You have a much higher than normal body weight. Consider consulting a doctor.';
    }
  }
}
