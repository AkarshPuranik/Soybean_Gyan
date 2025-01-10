import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farmers_app/generated/l10n.dart'; // Import localization

class Seed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).seedTreatmentTitle, // Localized title
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, right: 30, left: 30, bottom: 25),
          child: Column(
            children: [
              _buildLocalizedContainer(context, S.of(context).seedTreatmentInfo1),
              Divider(height: 20, thickness: 1, color: Colors.black12),
              _buildLocalizedContainer(context, S.of(context).seedTreatmentInfo2),
              Divider(height: 20, thickness: 1, color: Colors.black12),
              _buildLocalizedContainer(context, S.of(context).seedTreatmentInfo3),
              Divider(height: 20, thickness: 1, color: Colors.black12),
              _buildLocalizedContainer(context, S.of(context).seedTreatmentInfo4),
              Divider(height: 20, thickness: 1, color: Colors.black12),
              _buildLocalizedContainer(context, S.of(context).seedTreatmentInfo5),
              Divider(height: 20, thickness: 1, color: Colors.black12),
              _buildLocalizedContainer(context, S.of(context).seedTreatmentInfo6),
              Divider(height: 20, thickness: 1, color: Colors.black12),
              _buildLocalizedContainer(context, S.of(context).seedTreatmentInfo7),
              Divider(height: 20, thickness: 1, color: Colors.black12),
              _buildLocalizedContainer(context, S.of(context).seedTreatmentInfo8),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build a container with localized text
  Widget _buildLocalizedContainer(BuildContext context, String localizedText) {
    return Container(
      padding: EdgeInsets.only(left: 16, bottom: 16, top: 16),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
      ),
      child: Text(
        localizedText,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
