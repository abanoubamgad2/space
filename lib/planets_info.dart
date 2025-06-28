import 'package:flutter/material.dart';

class PlanetsInfo extends StatelessWidget {
  const PlanetsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // استقبال البيانات من الـ arguments
    final planetData = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      backgroundColor: const Color(0XFF020a0d),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage('assets/images/moon.png'),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 150,
                  left: 20,
                  right: 0,
                  child: Text(
                    '${planetData['name']} : ${planetData['subtitle'] ?? ''}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Image(image: AssetImage(planetData['image'])),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                planetData['description'] ?? 'No description available',
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}