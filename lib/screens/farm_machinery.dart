import 'package:flutter/material.dart';
import 'package:farmers_app/screens/home.dart';
import 'package:farmers_app/generated/l10n.dart'; // For localization
import 'package:farmers_app/farmcont/broad.dart';
import 'package:farmers_app/farmcont/irrigated.dart';
import 'package:farmers_app/farmcont/ridge.dart';
import 'package:farmers_app/farmcont/single.dart';
import 'package:farmers_app/farmcont/soybean.dart';
import 'package:farmers_app/farmcont/subsoiler.dart';
import 'package:farmers_app/farmcont/sweep.dart';

class Farm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localized = S.of(context); // Access localized strings

    return Scaffold(
      appBar: AppBar(
        title: Text(localized.farmMachinery), // Localized string
        foregroundColor: Colors.white,
        elevation: 4,
        backgroundColor: Colors.green, // Green AppBar background
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => ContentPage(),
              ),
            );
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade700, Colors.green.shade400],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Column(
              children: [
                _buildFarmItem(
                  context,
                  localized.broadBedFurrow, // Localized string
                  'assets/images/broad.jpg',
                  Broad(),
                ),
                _buildFarmItem(
                  context,
                  localized.furrowIrrigatedRaisedBedSystem, // Localized string
                  'assets/images/irrigated.jpg',
                  Irrigated(),
                ),
                _buildFarmItem(
                  context,
                  localized.subsoiler, // Localized string
                  'assets/images/subsoiler.jpg',
                  Sub(),
                ),
                _buildFarmItem(
                  context,
                  localized.sweepSeedDrill, // Localized string
                  'assets/images/sweep.jpg',
                  Sweep(),
                ),
                _buildFarmItem(
                  context,
                  localized.ridgeFertilizerDrillCumSeedPlanter, // Localized string
                  'assets/images/ridge.jpg',
                  Ridge(),
                ),
                _buildFarmItem(
                  context,
                  localized.singleRidgeSeedPlanter, // Localized string
                  'assets/images/single.jpg',
                  Single(),
                ),
                _buildFarmItem(
                  context,
                  localized.soybeanSeedDrillCumPlanter, // Localized string
                  'assets/images/soybean.jpeg',
                  Soy(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFarmItem(
      BuildContext context,
      String title,
      String imagePath,
      Widget page,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(_createRoute(page));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 2,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 6,
                  color: Colors.black54,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Route _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0); // Slide up
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }
}
