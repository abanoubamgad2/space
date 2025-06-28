import 'package:flutter/material.dart';

class PlanetsScreen extends StatefulWidget {
  @override
  _PlanetsScreenState createState() => _PlanetsScreenState();
}

class _PlanetsScreenState extends State<PlanetsScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // قائمة الكواكب
  final List<Map<String, dynamic>> planets = [
    {
      'name': 'Mercury',
      'image': 'assets/images/mercury.png',
      'subtitle': 'The closest planet ',
      'description': "About\n The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.\n\nDistance from Sun (km): 57,909,227\n\nLength of Day (hours):1,407.60\n\nOrbital Period (Earth years): 0.24\n\nRadius (km):2,439.70\n\nMass (kg): 3.301 × 10²³\n\nGravity (m/s²):3.7\n\nSurface Area (km²): 7.48 × 10⁷"
    },
    {
      'name': 'Venus',
      'image': 'assets/images/venus.png',
      'subtitle': "Earth's Toxic Twin",
      'description':"About\n Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.\n\nDistance from Sun (km):108,209,072\n\nLength of Day (hours): 5,832.20\n\nOrbital Period (Earth years): 0.62\n\nRadius (km): 6,051.80\n\nMass (kg): 4.867 × 10²⁴\n\nGravity (m/s²): 8.87\n\nSurface Area (km²): 4.60 × 10⁸"
    },
    {
      'name': 'Earth',
      'image': 'assets/images/earth.png',
      'subtitle': 'Our BLUE Marble',
      'description': "About\n Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms.\n\nDistance from Sun (km): 149,598,026\n\nLength of Day (hours): 23.93\n\nOrbital Period (Earth years): 1.00\n\nRadius (km): 6,371\n\nMass (kg): 5.97 x 10^24\n\nGravity (m/s²): 9.81\n\nSurface Area (km²): 5.10 × 10⁸"
    },

    {
      'name': 'Mars',
      'image': 'assets/images/mars.png',
      'subtitle': 'The Red Planet',
      'description': "About\n Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.\n\nDistance from Sun (km): 227,943,824\n\nLength of Day (hours): 24.62\n\nOrbital Period (Earth years): 1.88\n\nRadius (km): 3,389.50\n\nMass (kg): 6.39 × 10²³\n\nGravity (m/s²): 3.71\n\nSurface Area (km²):1.45 × 10⁸"
    },
    {
      'name': 'Jupiter',
      'image': 'assets/images/jupiter.png',
      'subtitle': 'The Gas Giant ',
      'description': "About\n Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.\n\nDistance from Sun (km): 778,547,669\n\nLength of Day (hours):9.92\n\nOrbital Period (Earth years): 11.86\n\nRadius (km):69,911\n\nMass (kg): 1.898 × 10²⁷\n\nGravity (m/s²): 24.79\n\nSurface Area (km²): 6.21 × 10¹⁵"
    },
    {
      'name': 'Saturn',
      'image': 'assets/images/saturn.png',
      'subtitle': 'The Ringed Planet',
      'description': "About\n Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.\n\nDistance from Sun (km): 1,426,666,422\n\nLength of Day (hours): 10.66\n\nOrbital Period (Earth years): 29.46\n\nRadius (km): 58,232\n\nMass (kg): 5.683 × 10²⁶\n\nGravity (m/s²): 10.44\n\nSurface Area (km²):4.27 × 10¹⁵"

    },
    {
      'name': 'Uranus',
      'image': 'assets/images/planet.png',
      'subtitle': 'The Tilted Planet',
      'description': "About\n Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.\n\nDistance from Sun (km): 2,870,990,000\n\nLength of Day (hours): 17.24\n\nOrbital Period (Earth years):84.01\n\nRadius (km): 25,362\n\nMass (kg): 8.681 × 10²⁵\n\nGravity (m/s²): 8.69\n\nSurface Area (km²): 8.1 × 10¹⁵"
    },
    {
      'name': 'Neptune',
      'image': 'assets/images/neptune.png',
      'subtitle': 'The Distant Blue Planet',
      'description': "About\n Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.\n\nDistance from Sun (km): 4,498,252,900\n\nLength of Day (hours): 16.11\n\nOrbital Period (Earth years): 164.8\n\nRadius (km): 24,622\n\nMass (kg): 1.024 × 10²⁶\n\nGravity (m/s²): 11.15\n\nSurface Area (km²): 7.65 × 10¹⁵"
    },
    {
      'name': 'Sun',
      'image': 'assets/images/sun.png',
      'subtitle': 'The Heart of Our Solar System',
      'description': "About\n The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.\n\nDistance from Sun (km):0\n\nLength of Day (hours): 0\n\nOrbital Period (Earth years):0\n\nRadius (km):695,700\n\nMass (kg): 1.989 × 10³⁰\n\nGravity (m/s²):274\n\nSurface Area (km²): 6.09 × 10¹²"
    },
    // يمكنك إضافة المزيد من الكواكب هنا
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF020a0d),
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage('assets/images/moon.png'),
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 10,
                left: 160,
                right: 0,
                child: Text(
                  'Explore',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 170,
                left: 15,
                right: 0,
                child: Text(
                  'Which planet \n would you like to explore?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: planets.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(height: 10),
                    Image(image: AssetImage(planets[index]['image'])),
                    SizedBox(height: 30),
                    Text(
                      planets[index]['name'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: IconButton(
                    onPressed: () {
                      if (_currentPage > 0) {
                        _pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: IconButton(
                    onPressed: () {
                      if (_currentPage < planets.length - 1) {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: WidgetStatePropertyAll(Size(430, 70)),
              backgroundColor: WidgetStatePropertyAll(Colors.red),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                'planets_info',
                arguments: planets[_currentPage],
              );
            },
            child: Text(
              'Explore ${planets[_currentPage]['name']}',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}