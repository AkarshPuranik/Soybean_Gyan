import 'package:farmers_app/generated/l10n.dart';
import 'package:farmers_app/screens/about.dart';
import 'package:farmers_app/screens/advisory.dart';
import 'package:farmers_app/screens/chatbot.dart'; // Import the Chatbot page
import 'package:farmers_app/screens/contact.dart';
import 'package:farmers_app/screens/good_agri.dart';
import 'package:farmers_app/screens/insect_management_system.dart';
import 'package:farmers_app/screens/ml_model.dart';
import 'package:farmers_app/screens/pre.dart';
import 'package:flutter/material.dart';
import 'package:farmers_app/screens/youtube.dart';
import 'package:farmers_app/screens/market_prices.dart';
import 'package:farmers_app/screens/crop_management.dart';
import 'package:farmers_app/screens/insect_management.dart';
import 'package:farmers_app/screens/soyfood.dart';
import 'package:farmers_app/screens/disease_management.dart';
import 'package:farmers_app/screens/weed_management.dart';
import 'package:farmers_app/screens/farm_machinery.dart';
import 'package:farmers_app/important/important.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localized = S.of(context); // Get localized strings

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white), // Set drawer icon color to white
        title: Text(
          localized.soybeanGyan1, // Use localized title
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.chat), // Chat icon
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ChatbotPage()), // Navigate to Chatbot page
              );
            },
          ),
        ],
      ),
      drawer: _buildDrawer(context),
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
          SingleChildScrollView(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _buildSection(context, localized.marketPrices, 'assets/images/mandi.jpeg', MarketPrice()),
                _buildSection(context, localized.smartsoytitle, 'assets/images/ai_model.jpg', MLModelPage()),
                _buildSection(context, localized.cropManagement, 'assets/images/crop.jpg', Crop_Management()),
                _buildSection(context, localized.SoyInsect, 'assets/images/insect.jpg', SoyInsect()),
                _buildSection(context, localized.soyFood, 'assets/images/soyfood.jpg', SoyFood()),
                _buildSection(context, localized.diseaseManagement, 'assets/images/disease.jpg', DiseaseManagement()),
                _buildSection(context, localized.weedManagement, 'assets/images/weed.jpg', Weed()),
                _buildSection(context, localized.farmMachinery, 'assets/images/farm.jpg', Farm()),
                _buildSection(context, localized.videoGallery, 'assets/images/youtube.png', YouTubeLauncher()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Drawer with localized items and icons
  Widget _buildDrawer(BuildContext context) {
    final localized = S.of(context);
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.lightGreen],
              ),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/icons.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Text(
                  localized.contents, // Localized drawer header text
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          _buildDrawerItem(context, title: localized.soybot, page: ChatbotPage(), icon: Icons.chat),
          _buildDrawerItem(context, title: localized.farmerAdvisory, page: WebViewPage(), icon: Icons.add_alert),
          _buildDrawerItem(context, title: localized.insectManagementSystem, page: insectmanagenemtsystem(), icon: Icons.settings),
          _buildDrawerItem(context, title: localized.PredisposingFactors, page: pre(), icon: Icons.warning),
          _buildDrawerItem(context, title: localized.GoodAgriPractices, page: Agri(), icon: Icons.check_circle),
          _buildDrawerItem(context, title: localized.contactInformation, page: Contact(), icon: Icons.call),
          _buildDrawerItem(context, title: localized.about, page: About(), icon: Icons.info),
        ],
      ),
    );
  }

  /// Drawer Item Builder with Icon
  Widget _buildDrawerItem(BuildContext context, {required String title, required Widget page, required IconData icon}) {
    return ListTile(
      leading: Icon(icon), // Add the icon here
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }

  /// Section Builder with Image and Navigation
  Widget _buildSection(BuildContext context, String title, String imagePath, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 22,
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
          ],
        ),
      ),
    );
  }
}
