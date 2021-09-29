import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize ScaledSizeUtil using ScaledSize()
    return ScaledSize(
      allowTextScaling: true,
      builder: () {
        // print(ScaledSizeUtil.deviceType);
        // print(ScaledSizeUtil.orientation);
        // print(ScaledSizeUtil.screenHeight);
        // print(ScaledSizeUtil.screenWidth);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            child: Scaffold(
              body: ListView(
                children: [
                  SizedBox(
                    height: 20.rh, // Using Responsive height
                  ),
                  Text(
                    "This is a Example app for scaled_size package",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 1.15.rem, // Using rem for font size
                    ),
                  ),
                  SizedBox(
                    height: 20.rh, // Using Responsive height
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://images.pexels.com/photos/879109/pexels-photo-879109.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                        width: 90.vw,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.rh, // Using Responsive height
                  ),
                  Text(
                    "This is a text having fontSize in sp and scaling is set to true by default",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.rfs,
                    ),
                  ),
                  SizedBox(
                    height: 30.rh, // Using Responsive height
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40.vw,
                        height: 20.vh,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 20.vw, // Using Viewport width
                      ),
                      Container(
                        width: 40.vw,
                        height: 20.vh,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.rh,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFFF5555),
                        primary: Colors.white,
                        elevation: 5.rh,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.br),
                        ),
                      ),
                      child: Text(
                        "This is a button",
                        style: TextStyle(fontSize: 13.rfs),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
