import 'package:flutter/material.dart';
import 'package:farmers_app/generated/l10n.dart';

class Harvesting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localized = S.of(context); // Access localized strings

    return Scaffold(
      appBar: AppBar(
        title: Text(localized.harvestingTitle, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal)),
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
        child: Padding(
          padding: EdgeInsets.only(top: 20, right: 30, left: 30, bottom: 25),
          child: Column(
            children: [
              _buildInfoBox(localized.harvestingInfo1),
              _buildInfoBox(localized.harvestingInfo2),
              _buildInfoBox(localized.harvestingInfo3),
              _buildInfoBox(localized.harvestingInfo4),
              _buildInfoBox(localized.harvestingInfo5),
              _buildInfoBox(localized.harvestingInfo6),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoBox(String text) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
