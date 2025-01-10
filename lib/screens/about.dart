import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:farmers_app/generated/l10n.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localized = S.of(context); // Access localized strings

    return Scaffold(
      appBar: AppBar(
        title: Text(localized.aboutTitle, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              localized.soybeanGyan, // Use localized string for the description
              style: TextStyle(fontSize: 16.0),
            ),
            _buildLink(localized.section1, 'https://iisrindore.icar.gov.in/FARM1.HTM'),
            _buildLink(localized.section2, 'https://iisrindore.icar.gov.in/FARM1.HTM'),
            _buildLink(localized.section3, 'https://iisrindore.icar.gov.in/FARM1.HTM'),
            _buildLink(localized.section4, 'https://iisrindore.icar.gov.in/FARM1.HTM'),
            _buildLink(localized.section5, 'https://iisrindore.icar.gov.in/FARM1.HTM'),
            _buildLink(localized.section6, 'https://iisrindore.icar.gov.in/fooduses.html'),
          ],
        ),
      ),
    );
  }

  Widget _buildLink(String text, String url) {
    return GestureDetector(
      onTap: () {
        _launchURL(url);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
