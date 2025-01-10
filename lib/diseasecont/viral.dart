import 'package:flutter/material.dart';
import 'package:farmers_app/diseasecont/Soybean Mosaic.dart';
import 'package:farmers_app/diseasecont/indian.dart';
import 'package:farmers_app/diseasecont/phyllody.dart';
import 'package:farmers_app/diseasecont/yellow.dart';
import 'package:farmers_app/generated/l10n.dart';

class Viral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text(S.of(context).viral_diseases), // Localized title
      ),
      backgroundColor: Colors.green.shade400, // Set the background color to green
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildViralItem(
            context,
            S.of(context).soybean_mosaic, // Localized name
            'assets/images/mosaic.jpg',
            Mosaic(),
          ),
          _buildViralItem(
            context,
            S.of(context).yellow_mosaic, // Localized name
            'assets/images/yellow.jpg',
            Yellow(),
          ),
          _buildViralItem(
            context,
            S.of(context).indian_bud_blight, // Localized name
            'assets/images/virus_bud_blight.jpg',
            Indian(),
          ),
          _buildViralItem(
            context,
            S.of(context).phyllody_no_podding_syndrome, // Localized name
            'assets/images/phyllody.jpg',
            Phyllody(),
          ),
        ],
      ),
    );
  }

  Widget _buildViralItem(
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
