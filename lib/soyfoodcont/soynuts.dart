import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart'; // Ensure this import is correct for your project

class Nuts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/soynuts.jpg',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.green[800],
          ),
          SliverFillRemaining(
            child: Container(
              color: Colors.green[800],
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).soynuts, // Localized string for 'Soy Nuts'
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50, width: 50),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen, // Light green background color
                      borderRadius: BorderRadius.circular(50), // Rounded corners
                    ),
                    child: Text(
                      S.of(context).soyNutsDescription, // Localized string for the description
                      style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
