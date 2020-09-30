import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fourth_screen.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.off(FourthScreen());
              },
              child: Container(
                child: Center(
                  child: Text("Go to Fourth Page"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
