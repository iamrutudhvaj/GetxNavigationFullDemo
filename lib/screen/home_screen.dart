import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_full_demo/screen/fourth_screen.dart';
import 'package:getx_full_demo/screen/second_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final count = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("GetX Examples")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.to(SecondScreen());
              },
              child: Container(
                child: Center(
                  child: Text("Go to Second Page"),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Get.snackbar("Hello! Rutudhvaj", "How are you?",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.blue,
                    colorText: Colors.white);
              },
              child: Container(
                child: Center(
                  child: Text("SnackBar"),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Hello! Rutudhvaj",
                  content: Text("How are you?"),
                );
              },
              child: Container(
                child: Center(
                  child: Text("Show Dialog"),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    height: 300,
                    child: FlutterLogo(),
                  ),
                );
              },
              child: Container(
                child: Center(
                  child: Text("Show BottomSheet"),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () async {
                count.value = await Get.to(FourthScreen());
              },
              child: Container(
                child: Center(
                  child: Text("Go to Fourth Page with Arguments"),
                ),
              ),
            ),
            Obx(() => Text("Count is ${count.value}")),
          ],
        ),
      ),
    );
  }
}
