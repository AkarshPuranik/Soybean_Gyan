import 'package:flutter/material.dart';
import 'package:farmers_app/screens/home.dart';
import 'package:farmers_app/generated/l10n.dart';
import 'package:farmers_app/diseasecont/blight.dart';
import 'package:farmers_app/diseasecont/pustule.dart';

class Bacterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localized = S.of(context); // Access localized strings

    return Scaffold(
      extendBodyBehindAppBar: true, // Makes the gradient visible behind the AppBar
      appBar: AppBar(
        title: Text(S.of(context).BacterialDiseases), // Localized title
        foregroundColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.green.withOpacity(0.8), // Set AppBar to semi-transparent green
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
        width: double.infinity, // Ensure the container takes the full width
        height: double.infinity, // Ensure the container takes the full height
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade700, Colors.green.shade400], // Green gradient
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Column(
              children: [
                SizedBox(height: 90), // Add space below the AppBar
                _buildDiseaseItem(context, localized.bacterialBlight, 'assets/images/blight.jpg', Blight()),
                _buildDiseaseItem(context, localized.bacterialPustule, 'assets/images/pustule.jpg', Pustule()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDiseaseItem(
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
