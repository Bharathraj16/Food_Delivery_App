import 'package:flutter/material.dart';
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
              child:Image.asset("Images/picture3.png"),
            ),
          ),
          Positioned(
            top: 550.0, // Adjust based on card height and desired padding
            left: 25.0,
            right: 25.0,
            child: Column(
              children: [
                Text(
                  "Convenience e-wallet",
                  style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),
                ),
                Text(
                  "app connecting",
                  style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15.0),
                Text("A diverse list of different dinning", style: TextStyle(color: Colors.black)),
                Text( "restuarants throughout the teriitory and",style: TextStyle(color: Colors.black)),
                Text( "around your area carefully selected",style: TextStyle(color: Colors.black)),
                SizedBox(height: 60.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      backgroundColor: Color(0xffF53535),
                      padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 10.0)
                  ),
                  onPressed: () {},
                  child: const Text("Get started",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.start),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
