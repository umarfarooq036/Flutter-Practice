import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  String text = "hello";

  void setText(input) {
    setState(() {
      text = input;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: const Text("data"),
          backgroundColor: Colors.red,
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Show a toast message when settings icon is pressed
                Fluttertoast.showToast(
                  msg: 'Settings Clicked!',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                );
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setText("Press me button");
                      Fluttertoast.showToast(
                          msg: text, toastLength: Toast.LENGTH_SHORT);
                    },
                    child: const Text("Press me"),
                  ),
                  IconButton(
                      onPressed: () {
                        setText("Camera Button");
                        Fluttertoast.showToast(
                            msg: text, toastLength: Toast.LENGTH_SHORT);
                      },
                      icon: const Icon(Icons.add_a_photo)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
