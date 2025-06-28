import 'package:flutter/material.dart';

class main_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/solar.png'),
          ),
          Positioned(
            top: 300,
            left: 10,
            right: 50,
            child: Text(
              'Explore The Universe',
              style: TextStyle(
                color: Colors.white,
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              top: 870,
              left: 0,
              right: 0,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.red)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'planets');
                  },
                  child:
                      Text(style: TextStyle(color: Colors.white), 'Explore')))
        ],
      ),
    );
  }
}
