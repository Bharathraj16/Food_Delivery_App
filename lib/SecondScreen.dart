import 'package:flutter/material.dart';
import 'package:flutter_project/ThirdScreen.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Card with rounded bottom corners
          Positioned(
            top: 60.0,
            left: 25.0,
            right: 25.0,
            child: Container(
              height: 450.0,
              width: 500.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ), color:Color(0xffEDB2B9)

              ),
              child:Image.asset("Images/picture2.png"),
            ),
          ),
          Positioned(
            top: 550.0, // Adjust based on card height and desired padding
            left: 25.0,
            right: 25.0,
            child: Column(
              children: [
                Text(
                  "Quick delivery to",
                  style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),
                ),
                Text(
                  "your doorstep",
                  style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15.0),
                Text("We have a dynamic and professional", style: TextStyle(color: Colors.black)),
                Text( "delivery team that is professionaly and",style: TextStyle(color: Colors.black)),
                Text( "intelligently trained",style: TextStyle(color: Colors.black)),
                SizedBox(height: 60.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      backgroundColor: Color(0xffF53535),
                      padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 10.0)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdScreen()),
                    );
                  },
                  child: const Text("Next",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}