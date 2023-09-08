import 'package:flutter/material.dart';

class productscreen extends StatelessWidget {
  const productscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('product page'),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              "product page",
              style: TextStyle(fontSize: 30),
              ),
ElevatedButton(onPressed: () {
  Navigator.pop(context);
}, child: Text("HOME")),
           ],
          ),
        ),
    );
  }
}