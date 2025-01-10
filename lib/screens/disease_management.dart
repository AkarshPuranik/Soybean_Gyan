import 'package:farmers_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:farmers_app/diseasecont/bacterial.dart';
import 'package:farmers_app/diseasecont/fungal.dart';
import 'package:farmers_app/diseasecont/viral.dart';
import 'package:farmers_app/generated/l10n.dart'; // Add the localization import

class DiseaseManagement extends StatefulWidget {
  @override
  State<DiseaseManagement> createState() => _DiseaseManagementState();
}

class _DiseaseManagementState extends State<DiseaseManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => ContentPage()),
            );
          },
        ),
        title: Text(S.of(context).diseaseManagement), // Localized title
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade700, Colors.green.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 40),
                _buildDiseaseOption(
                  context,
                  S.of(context).bacterialDiseases,  // Localized title
                  'assets/images/bd.jpg',
                  Bacterial(),
                ),
                _buildDiseaseOption(
                  context,
                  S.of(context).fungalDiseases,  // Localized title
                  'assets/images/fungal.jpg',
                  Fungal(),
                ),
                _buildDiseaseOption(
                  context,
                  S.of(context).viralDiseases,  // Localized title
                  'assets/images/viral.jpg',
                  Viral(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDiseaseOption(
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
                height: 230,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10.0,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 25.0,
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
