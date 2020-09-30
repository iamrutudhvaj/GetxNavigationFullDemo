import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_full_demo/screen/home_screen.dart';

class FourthScreen extends StatefulWidget {
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    dynamic args = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourth Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
        child: (args != null)
            ? Center(
                child: Text(args[0] + " " + args[1]),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Get.back(result: 4);
                    },
                    child: Container(
                      child: Center(
                        child: Text("Go to Home Page"),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
