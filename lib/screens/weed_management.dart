import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../generated/l10n.dart';
import 'package:farmers_app/weedcont/general.dart';
import 'package:farmers_app/weedcont/losses.dart';
import 'package:farmers_app/weedcont/management.dart';
import 'package:farmers_app/weedcont/types.dart';

class Weed extends StatelessWidget {
  final List<String> imageList = [
    'assets/images/weed.jpg',
    'assets/images/cy.jpg',
    'assets/images/geni.jpg',
    'assets/images/cru.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final buttonWith = mediaQuery.size.width * 0.9;
    final buttonHeight = mediaQuery.size.height * 0.07;

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).weedManagement),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade700, Colors.green.shade400],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: CarouselSlider(
                items: imageList.map((image) {
                  return Container(
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
            _buildButton(context, buttonWith, buttonHeight, S.of(context).lossesDueToWeed, Losses()),
            _buildButton(context, buttonWith, buttonHeight, S.of(context).typesOfWeed, Types()),
            _buildButton(context, buttonWith, buttonHeight, S.of(context).weedManagementPractices, Management()),
            _buildButton(context, buttonWith, buttonHeight, S.of(context).generalPrecautions, General()),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, double width, double height, String text, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => page));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8, // Adds shadow to the button
            shadowColor: Colors.black, // Specifies the shadow color
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 19),
          ),
        ),
      ),
    );
  }
}
