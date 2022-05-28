import 'package:flutter/material.dart';
import 'package:shared/export_shared.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ConsumerHomePage(),    
    );
  }
}


class ConsumerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumer"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           const Text("This is consumer app"),
            TextButton(
              onPressed: (){
                showSnackBar(context,"This is consumer app");
            },  
             child: const Text("Show SnackBar"),
             )
          ],
        ),
      ),
    );
  }
}

