import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart'; // Import localization file

class Chakli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/soychakli.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              backgroundColor: Colors.green[800],
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.green[800],
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).soychakli, // Localized title for 'Soy Chakli'
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20), // Improved spacing
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen, // Light green background color
                        borderRadius: BorderRadius.circular(15), // Rounded corners
                      ),
                      child: Text(
                        S.of(context).soyChakliDescription, // Localized description
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          height: 1.5, // Line height for readability
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
