import 'package:flutter/material.dart';
import 'package:farmers_app/screens/home.dart';
import 'package:farmers_app/soyfoodcont/soychakli.dart';
import 'package:farmers_app/soyfoodcont/soycurd.dart';
import 'package:farmers_app/soyfoodcont/soyflour.dart';
import 'package:farmers_app/soyfoodcont/soyhalwa.dart';
import 'package:farmers_app/soyfoodcont/soyladoo.dart';
import 'package:farmers_app/soyfoodcont/soymathari.dart';
import 'package:farmers_app/soyfoodcont/soymilk.dart';
import 'package:farmers_app/soyfoodcont/soynankhatai.dart';
import 'package:farmers_app/soyfoodcont/soynuts.dart';
import 'package:farmers_app/soyfoodcont/soypakora.dart';
import 'package:farmers_app/soyfoodcont/soyupma.dart';
import 'package:farmers_app/soyfoodcont/tofu.dart';
import 'package:farmers_app/generated/l10n.dart';

class SoyFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Allows the gradient background to go behind the AppBar
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => ContentPage(),
              ),
            );
          },
        ),
        title: Text(S.of(context).soyFood),  // Use the localized string here
        backgroundColor: Colors.green, // Green AppBar
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade700, Colors.green.shade300], // Gradient background
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Add a SizedBox here to create space between AppBar and the first image
                SizedBox(height: 100.0), // Adjust the height to your preference
                _buildSoyFoodItem(
                  context,
                  S.of(context).tofu,   // Localized text
                  'assets/images/tofu.jpg',
                  Tofu(),
                ),
                _buildSoyFoodItem(
                  context,
                  S.of(context).soychakli,   // Localized text
                  'assets/images/soychakli.jpg',
                  Chakli(),
                ),
                _buildSoyFoodItem(
                  context,
                  S.of(context).soycurd,   // Localized text
                  'assets/images/soycurd.jpg',
                  Curd(),
                ),
                _buildSoyFoodItem(
                  context,
                  S.of(context).soyflour,   // Localized text
                  'assets/images/soyflour.png',
                  Flour(),
                ),
                _buildSoyFoodItem(
                  context,
                  S.of(context).soymilk,   // Localized text
                  'assets/images/soymilk.jpg',
                  Milk(),
                ),
                _buildSoyFoodItem(
                  context,
                  S.of(context).soynuts,   // Localized text
                  'assets/images/soynuts.jpg',
                  Nuts(),
                ),
                _buildSoyFoodItem(
                  context,
                  S.of(context).soyhalwa,   // Localized text
                  'assets/images/soy_halwa.jpg',
                  Halwa(),
                ),
                _buildSoyFoodItem(
                  context,
                  S.of(context).soyladoo,   // Localized text
                  'assets/images/soy_ladoo.jpg',
                  Ladoo(),
                ),
                _buildSoyFoodItem(
                  context,
                  S.of(context).soymathari,   // Localized text
                  'assets/images/soy_mathari.jpg',
                  Mathari(),
                ),
                _buildSoyFoodItem(
                  context,
                  S.of(context).soynankhatai,   // Localized text
                  'assets/images/soy_nankhatai.jpg',
                  Nankhatai(),
                ),
                _buildSoyFoodItem(
                  context,
                  S.of(context).soypakora,   // Localized text
                  'assets/images/soy_pakora.png',
                  Pakora(),
                ),
                _buildSoyFoodItem(
                  context,
                  S.of(context).soyupma,   // Localized text
                  'assets/images/soy_upma.jpg',
                  Upma(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSoyFoodItem(
      BuildContext context,
      String title,
      String imagePath,
      Widget page,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10.0,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
