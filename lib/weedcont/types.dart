import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart';  // Import the localization generated file

class Types extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).weedImages,  // Use localized string for title
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
        ),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: [
                Image.asset('assets/images/weed.jpg'),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).weed1,  // Use localized string for weed name
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset('assets/images/cy.jpg'),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).weed2,  // Use localized string for weed name
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset('assets/images/cyper.jpg'),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).weed3,  // Use localized string for weed name
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset('assets/images/dig.jpg'),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).weed4,  // Use localized string for weed name
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset('assets/images/cru.jpg'),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).weed5,  // Use localized string for weed name
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset('assets/images/geni.jpg'),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).weed6,  // Use localized string for weed name
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
