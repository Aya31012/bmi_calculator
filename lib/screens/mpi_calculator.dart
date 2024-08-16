import 'package:flutter/material.dart';
import 'package:mpi_calculator/screens/result_page.dart';
import 'package:mpi_calculator/widgets/calculate_button.dart';
import 'package:mpi_calculator/widgets/gender_selection.dart';
import 'package:mpi_calculator/widgets/height.dart';
import 'package:mpi_calculator/widgets/weight_age.dart';

class ApplicatinScreen extends StatefulWidget {
  const ApplicatinScreen({super.key});

  @override
  _ApplicatinScreenState createState() => _ApplicatinScreenState();
}

class _ApplicatinScreenState extends State<ApplicatinScreen> {
  double _sliderValue = 50;
  int weight = 0;
  int age = 0;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('MBI Calculator')),
        backgroundColor: const Color(0xFF24263B),
      ),
      body: Container(
        color: const Color(0xFF1C2135),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: GenderSelection(
                      isMale: isMale,
                      onGenderSelected: (selectedGender) {
                        setState(() {
                          isMale = selectedGender;
                        });
                      },
                      screenHeight: screenHeight,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Expanded(
                    flex: 2,
                    child: HeightSlider(
                      sliderValue: _sliderValue,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                      screenHeight: screenHeight,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: WeightAgeSelection(
                            label: 'Weight',
                            value: weight,
                            onIncrease: () {
                              setState(() {
                                weight++;
                              });
                            },
                            onDecrease: () {
                              setState(() {
                                if (weight > 5) {
                                  weight--;
                                }
                              });
                            },
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: WeightAgeSelection(
                            label: 'Age',
                            value: age,
                            onIncrease: () {
                              setState(() {
                                age++;
                              });
                            },
                            onDecrease: () {
                              setState(() {
                                if (age > 1) {
                                  age--;
                                }
                              });
                            },
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70.0),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CalculateButton(
                onPressed: () {
                  double bmi = weight / ((_sliderValue / 100) * (_sliderValue / 100));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(result: bmi),
                    ),
                  );
                },
                screenHeight: screenHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget _buildRoundedIconButton({
  required IconData icon,
  required VoidCallback onPressed,
  required double screenHeight,
}) {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xFF8B8C9E),
      borderRadius: BorderRadius.circular(100),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 6,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: IconButton(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white, size: screenHeight * 0.03),
    ),
  );
}








