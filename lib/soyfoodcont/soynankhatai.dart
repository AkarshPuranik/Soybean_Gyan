import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart'; // Ensure this import is correct for your project

class Nankhatai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/soy_nankhatai.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              backgroundColor: Colors.green[800],
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.green[800],
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).soynankhatai, // Localized string for 'Soy NanKhatai'
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen, // Light green background color
                        borderRadius: BorderRadius.circular(50), // Rounded corners
                      ),
                      child: Text(
                        S.of(context).soyNankhataiDescription, // Localized description
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
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
