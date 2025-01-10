import 'package:farmers_app/cropcont/harvesting.dart';
import 'package:farmers_app/cropcont/intercropping.dart';
import 'package:farmers_app/cropcont/manures.dart';
import 'package:farmers_app/cropcont/seed.dart';
import 'package:farmers_app/cropcont/selection.dart';
import 'package:farmers_app/cropcont/soil.dart';
import 'package:farmers_app/cropcont/sowing.dart';
import 'package:farmers_app/cropcont/tillage.dart';
import 'package:farmers_app/cropcont/water.dart';
import 'package:farmers_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:farmers_app/generated/l10n.dart'; // Localization import

class Crop_Management extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final buttonWidth = mediaQuery.size.width * 0.85;
    final buttonHeight = mediaQuery.size.height * 0.08;
    final localized = S.of(context); // Access localized strings

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => ContentPage()));
          },
        ),
        title: Text(localized.cropManagement), // Use localized string for title
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          // Green gradient background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green.shade700, Colors.green.shade300],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildAnimatedButton(context, localized.soilRequirement, Soil(), buttonWidth, buttonHeight),
                    _buildAnimatedButton(context, localized.tillage, Tillage(), buttonWidth, buttonHeight),
                    _buildAnimatedButton(context, localized.selectionVarieties, Selection(), buttonWidth, buttonHeight),
                    _buildAnimatedButton(context, localized.seedTreatment, Seed(), buttonWidth, buttonHeight),
                    _buildAnimatedButton(context, localized.sowingTime, Sowing(), buttonWidth, buttonHeight),
                    _buildAnimatedButton(context, localized.manuresFertilizers, Manures(), buttonWidth, buttonHeight),
                    _buildAnimatedButton(context, localized.intercropping, Intercropping(), buttonWidth, buttonHeight),
                    _buildAnimatedButton(context, localized.waterManagement, Water(), buttonWidth, buttonHeight),
                    _buildAnimatedButton(context, localized.harvestingThreshing, Harvesting(), buttonWidth, buttonHeight),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnimatedButton(BuildContext context, String title, Widget page, double buttonWidth, double buttonHeight) {
    return Column(
      children: [
        MouseRegion(
          onEnter: (_) => print('Hovered: $title'), // Optional hover interaction
          child: SizedBox(
            width: buttonWidth,
            height: buttonHeight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(_createRoute(page));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                shadowColor: Colors.green.shade900,
                elevation: 5, // Add some shadow for depth
              ),
              child: Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        const Divider(color: Colors.black26, thickness: 1, height: 20),
        const SizedBox(height: 12),
      ],
    );
  }

  Route _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Slide in from right
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
