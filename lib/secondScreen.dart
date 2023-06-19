import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  int count;
  SecondScreen(this.count);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),

        elevation: 6,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Congratulations! You reached $count!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}
