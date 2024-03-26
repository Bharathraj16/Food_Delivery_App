import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Positioned(
              top: 20.0,
              left: 50.0,
              right: 50.0,
              child: Container(
                height: 500.0,
                width: 400.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                ),
              )
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      backgroundColor: Color(0xffF53535),
                      padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0)
                  ),
                  onPressed: () {},
                  child: const Text("Create a new account",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.start)),
                SizedBox(height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Colors.redAccent),
                        ),
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 10.0)
                    ),
                    onPressed: () {},
                    child: const Text("Sign in",style: TextStyle(fontSize: 20,color: Colors.red),textAlign: TextAlign.start)),
                SizedBox(height: 20,width: 20,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Colors.redAccent),
                        ),
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0)
                    ),
                    onPressed: () {},
                    child: const Text("Continue with Google",style: TextStyle(fontSize: 20,color: Colors.red),textAlign: TextAlign.start)),
              ],
            ),
            SizedBox(height: 20,width: 20),
            Text(
              'Show more',
              style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
