import 'package:flutter/material.dart';
import 'package:farmers_app/screens/home.dart';
import 'package:farmers_app/generated/l10n.dart';
import 'package:farmers_app/inscetscont/BlueBeetle.dart';
import 'package:farmers_app/inscetscont/Brown.dart';
import 'package:farmers_app/inscetscont/White.dart';
import 'package:farmers_app/inscetscont/bihar.dart';
import 'package:farmers_app/inscetscont/girdle.dart';
import 'package:farmers_app/inscetscont/gram.dart';
import 'package:farmers_app/inscetscont/green.dart';
import 'package:farmers_app/inscetscont/grub.dart';
import 'package:farmers_app/inscetscont/leaff.dart';
import 'package:farmers_app/inscetscont/miner.dart';
import 'package:farmers_app/inscetscont/stemfly.dart';
import 'package:farmers_app/inscetscont/stink.dart';
import 'package:farmers_app/inscetscont/tobacco.dart';

class SoyInsect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localized = S.of(context); // Access localized strings

    return Scaffold(
      extendBodyBehindAppBar: true, // Makes the gradient visible behind the AppBar
      appBar: AppBar(
        title: Text(S.of(context).SoyInsect),
        foregroundColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.green, // Set AppBar to green
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
                SizedBox(height: 90), // Add space below the AppBar
                _buildInsectItem(context, localized.blueBeetle, 'assets/images/blue.jpeg', BlueBeetle()),
                _buildInsectItem(context, localized.biharCaterpillar, 'assets/images/bihar.jpeg', Bihar()),
                _buildInsectItem(context, localized.girdleBeetle, 'assets/images/girdle.png', Girdle()),
                _buildInsectItem(context, localized.gramPodBorer, 'assets/images/gram.jpeg', Gram()),
                _buildInsectItem(context, localized.greenSemiloopers, 'assets/images/semilooper.png', Green()),
                _buildInsectItem(context, localized.greenStinkBug, 'assets/images/green.jpg', Stink()),
                _buildInsectItem(context, localized.leafFolder, 'assets/images/leaff.jpg', Leaff()),
                _buildInsectItem(context, localized.whiteFly, 'assets/images/white.jpg', White()),
                _buildInsectItem(context, localized.stemFly, 'assets/images/stemfly.jpg', Stem()),
                _buildInsectItem(context, localized.leafMinerTitle, 'assets/images/miner.jpg', Miner()),
                _buildInsectItem(context, localized.tobaccoCaterpillar, 'assets/images/tobacco.jpg', Tobacco()),
                _buildInsectItem(context, localized.whiteGrub, 'assets/images/grub.jpg', Grub()),
                _buildInsectItem(context, localized.appTitle, 'assets/images/brown.jpg', Brown()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInsectItem(
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
