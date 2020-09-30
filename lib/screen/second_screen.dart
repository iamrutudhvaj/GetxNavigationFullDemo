import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_full_demo/screen/third_screen.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.off(ThirdScreen());
              },
              child: Container(
                child: Center(
                  child: Text("Go to Third Page"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
