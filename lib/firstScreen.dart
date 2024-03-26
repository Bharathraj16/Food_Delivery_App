import 'package:flutter/material.dart';
import 'package:flutter_project/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _currentImageIndex = 0; // Keep track of the current image index
  List<String> _imagePaths = [
    'Images/order.png',
    'Images/picture2.png',
    'Images/picture3.png'
    // Add more image paths as needed
  ];
  List<List<String>> _texts = [
    [
      "Shop from your",
      "favourite restaurant",
      "A diverse list of different dining",
      "restaurants throughout the territory and",
      "around your area carefully selected"
    ],
    [
      "Quick delivery to",
      "your doorstep",
      "We have a dynamic and professional",
      "delivery team that is professionally and",
      "intelligently trained"
    ],
    [
      "Convenience e-wallet",
      "app connecting",
      "A diverse list of different dinning",
      "restaurants throughout the territory and",
      "around your area carefully selected"
    ],
    // Add more lists of texts corresponding to each image
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_currentImageIndex > 0) {
          setState(() {
            _currentImageIndex--; // Move back to the previous image
          });
          return false; // Prevent default behavior
        }
        // If already at the first image, allow the app to close
        return true;
      },
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 60.0,
              left: 25.0,
              right: 25.0,
              child: Container(
                height: 450.0,
                width: 500.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xffEDB2B9),
                ),
                child: Image.asset(_imagePaths[_currentImageIndex]), // Display the current image
              ),
            ),
            Positioned(
              top: 550.0,
              left: 25.0,
              right: 25.0,
              child: Column(
                children: [
                  Text(
                    _texts[_currentImageIndex][0], // Display the current first text
                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _texts[_currentImageIndex][1], // Display the current second text
                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15.0),
                  for (int i = 2; i < _texts[_currentImageIndex].length; i++)
                    Text(_texts[_currentImageIndex][i], style: TextStyle(color: Colors.black)),
                  SizedBox(height: 60.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      backgroundColor: Color(0xffF53535),
                      padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 10.0),
                    ),
                    onPressed: () {
                      if (_currentImageIndex == _imagePaths.length - 1) {
                        // If reached the last image, navigate to another screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondScreen()),
                        );
                      } else {
                        setState(() {
                          _currentImageIndex = (_currentImageIndex + 1) % _imagePaths.length; // Move to the next image
                        });
                      }
                    },
                    child: const Text("Get started",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.start),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
